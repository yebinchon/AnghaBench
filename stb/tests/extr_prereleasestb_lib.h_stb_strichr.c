
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* stb_strchr2 (char*,char,char) ;
 char* strchr (char*,char) ;
 scalar_t__ tolower (char) ;
 scalar_t__ toupper (char) ;

char *stb_strichr(char *s, char t)
{
   if (tolower(t) == toupper(t))
      return strchr(s,t);
   return stb_strchr2(s, (char) tolower(t), (char) toupper(t));
}
