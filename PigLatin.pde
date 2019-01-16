public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}
public void draw()
{
        //not used
}
public int findFirstVowel(String sWord)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
  if (sWord.length() > 0)
  {
    for (int i = 0; i < sWord.length() - 1; i++)
    {
      if (sWord.substring(i,i+1).equals("a"))
        return sWord.indexOf("a");
      if (sWord.substring(i,i+1).equals("e"))
        return sWord.indexOf("e");
      if (sWord.substring(i,i+1).equals("i"))
        return sWord.indexOf("i");
      if (sWord.substring(i,i+1).equals("o"))
        return sWord.indexOf("o");
      if (sWord.substring(i,i+1).equals("u"))
        return sWord.indexOf("u");
    }
  }
	return -1;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{
  if (sWord.length() > 0)
  {
  	if (findFirstVowel(sWord) == -1)
  	{
  		return sWord + "ay";
  	}
  	else if (findFirstVowel(sWord) == 0)
  	{
  		return sWord + "way";
  	}
    else if (findFirstVowel(sWord) == 1 && sWord.substring(0,1).equals("q"))
    {
      return sWord.substring(2, sWord.length()) + "quay";
    }
    else
    {
       return sWord.substring(findFirstVowel(sWord), sWord.length()) + sWord.substring(0,findFirstVowel(sWord)) + "ay";
    }
  }
  return "ERROR!";
}
