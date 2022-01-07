
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _cputs (char*) ;
 int _getch () ;
 char _putch (int) ;
 int _ungetch (int) ;

char *_cgets(char *string)
{
  unsigned len = 0;
  unsigned int maxlen_wanted;
  char *sp;
  int c;




  if (!string)
    return(((void*)0));
  maxlen_wanted = (unsigned int)((unsigned char)string[0]);
  sp = &(string[2]);




  while(len < maxlen_wanted-1)
  {
    c=_getch();





    if (c == '\b')
    {
      if (len > 0)
      {
 _cputs("\b \b");

 len--;
 sp[len] = '\0';
      }
    }
    else if (c == '\r')
    {
      sp[len] = '\0';
      break;
    }
    else if (c == 0)
    {

      sp[len] = '\0';
      _ungetch(c);
      break;
    }
    else
    {
      sp[len] = _putch(c);
      len++;
    }
  }
  sp[maxlen_wanted-1] = '\0';
  string[1] = (char)((unsigned char)len);
  return(sp);
}
