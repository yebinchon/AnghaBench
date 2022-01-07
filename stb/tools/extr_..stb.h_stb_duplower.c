
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* stb_p_strdup (char*) ;
 char tolower (char) ;

char *stb_duplower(char *s)
{
   char *p = stb_p_strdup(s), *q = p;
   while (*q) {
      *q = tolower(*q);
      ++q;
   }
   return p;
}
