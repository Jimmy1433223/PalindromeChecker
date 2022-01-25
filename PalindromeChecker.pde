public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
    String x = "";
    for (int i = 0; i < word.length(); i++){
      if (Character.isLetter(word.charAt(i)) == true)
        x = x + word.substring(i, i+1);
    }
    
    String rev = reverse(word);
    String y = "";
    for (int j = 0;j < rev.length(); j++){
      if (Character.isLetter(rev.charAt(j)) == true)
        y = y + rev.substring(j, j+1);
    }
    x = x.toLowerCase();
    y = y.toLowerCase();
    for (int idx = 0; idx<x.length(); idx++){
      if (x.charAt(idx) != y.charAt(idx)){
        return false;
      }
    }
    return true;
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i = 0; i<str.length(); i++){
      sNew = sNew + str.substring(str.length()-1-i, str.length()-i);
    }
    return sNew;
}
