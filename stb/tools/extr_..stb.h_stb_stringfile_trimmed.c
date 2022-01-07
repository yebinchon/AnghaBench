
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* stb_skipwhite (char*) ;
 char** stb_stringfile (char*,int*) ;

char ** stb_stringfile_trimmed(char *name, int *len, char comment)
{
   int i,n,o=0;
   char **s = stb_stringfile(name, &n);
   if (s == ((void*)0)) return ((void*)0);
   for (i=0; i < n; ++i) {
      char *p = stb_skipwhite(s[i]);
      if (*p && *p != comment)
         s[o++] = p;
   }
   s[o] = ((void*)0);
   if (len) *len = o;
   return s;
}
