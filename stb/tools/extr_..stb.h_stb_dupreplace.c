
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 scalar_t__ malloc (int) ;
 int memcpy (char*,char*,size_t) ;
 int stb_p_strcpy_s (char*,int,char*) ;
 char* stb_p_strdup (char*) ;
 int strlen (char*) ;
 char* strstr (char*,char*) ;

char *stb_dupreplace(char *src, char *find, char *replace)
{
   size_t len_find = strlen(find);
   size_t len_replace = strlen(replace);
   int count = 0;

   char *s,*p,*q;

   s = strstr(src, find);
   if (s == ((void*)0)) return stb_p_strdup(src);
   do {
      ++count;
      s = strstr(s + len_find, find);
   } while (s != ((void*)0));

   p = (char *) malloc(strlen(src) + count * (len_replace - len_find) + 1);
   if (p == ((void*)0)) return p;
   q = p;
   s = src;
   for (;;) {
      char *t = strstr(s, find);
      if (t == ((void*)0)) {
         stb_p_strcpy_s(q,strlen(src)+count*(len_replace-len_find)+1,s);
         assert(strlen(p) == strlen(src) + count*(len_replace-len_find));
         return p;
      }
      memcpy(q, s, t-s);
      q += t-s;
      memcpy(q, replace, len_replace);
      q += len_replace;
      s = t + len_find;
   }
}
