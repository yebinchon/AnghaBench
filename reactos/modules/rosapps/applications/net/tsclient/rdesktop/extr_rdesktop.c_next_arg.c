
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;
 int strlen (char*) ;

char *
next_arg(char *src, char needle)
{
 char *nextval;
 char *p;
 char *mvp = 0;


 if (*src == (char) 0x00)
  return 0;

 p = src;

 while ((nextval = strchr(p, needle)))
 {
  mvp = nextval - 1;

  if (*mvp == '\\' && (mvp > src))
  {

   while (*(mvp + 1) != (char) 0x00)
   {
    *mvp = *(mvp + 1);
    mvp++;
   }
   *mvp = (char) 0x00;
   p = nextval;
  }
  else
  {
   p = nextval + 1;
   break;
  }

 }


 if (nextval)
 {
  *nextval = (char) 0x00;
  return ++nextval;
 }


 nextval = src + strlen(src);
 return nextval;
}
