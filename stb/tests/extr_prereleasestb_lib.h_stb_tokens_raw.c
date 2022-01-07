
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static char **stb_tokens_raw(char *src_, char *delimit, int *count,
                             int stripwhite, int allow_empty, char *start, char *end)
{
   int nested = 0;
   unsigned char *src = (unsigned char *) src_;
   static char stb_tokentable[256];
   static char stable[256],etable[256];
   char *out;
   char **result;
   int num=0;
   unsigned char *s;

   s = (unsigned char *) delimit; while (*s) stb_tokentable[*s++] = 1;
   if (start) {
      s = (unsigned char *) start; while (*s) stable[*s++] = 1;
      s = (unsigned char *) end; if (s) while (*s) stable[*s++] = 1;
      s = (unsigned char *) end; if (s) while (*s) etable[*s++] = 1;
   }
   stable[0] = 1;


   s = (unsigned char *) src;
   while (*s) {


      if (!allow_empty) {
         stb_tokentable[0] = 0;
         while (stb_tokentable[*s])
            ++s;
         if (!*s) break;
      }
      ++num;

      stb_tokentable[0] = 1;
      if (stripwhite == 2) {
         while (!stb_tokentable[*s]) {
            if (*s != '"')
               ++s;
            else {
               ++s;
               if (*s == '"')
                  ++s;
               else {

                  while (*s) {
                     if (s[0] == '"') {
                        if (s[1] == '"') s += 2;
                        else { ++s; break; }
                     } else
                        ++s;
                  }
               }
            }
         }
      } else
         while (nested || !stb_tokentable[*s]) {
            if (stable[*s]) {
               if (!*s) break;
               if (end ? etable[*s] : nested)
                  --nested;
               else
                  ++nested;
            }
            ++s;
         }
      if (allow_empty) {
         if (*s) ++s;
      }
   }



   result = (char **) malloc(sizeof(*result) * (num+1) + (s-src+1));
   if (result == ((void*)0)) return result;
   out = (char *) (result + (num+1));

   s = (unsigned char *) src;
   num = 0;
   nested = 0;
   while (*s) {
      char *last_nonwhite;


      if (!allow_empty) {
         stb_tokentable[0] = 0;
         if (stripwhite)
            while (stb_tokentable[*s] || isspace(*s))
               ++s;
         else
            while (stb_tokentable[*s])
               ++s;
      } else if (stripwhite) {
         while (isspace(*s)) ++s;
      }
      if (!*s) break;

      result[num] = out;
      ++num;

      stb_tokentable[0] = 1;
      last_nonwhite = out-1;
      if (stripwhite == 2) {
         while (!stb_tokentable[*s]) {
            if (*s != '"') {
               if (!isspace(*s)) last_nonwhite = out;
               *out++ = *s++;
            } else {
               ++s;
               if (*s == '"') {
                  if (!isspace(*s)) last_nonwhite = out;
                  *out++ = *s++;
               } else {

                  while (*s) {
                     if (s[0] == '"') {
                        if (s[1] == '"') { *out++ = *s; s += 2; }
                        else { ++s; break; }
                     } else
                        *out++ = *s++;
                  }
                  last_nonwhite = out-1;
               }
            }
         }
      } else {
         while (nested || !stb_tokentable[*s]) {
            if (!isspace(*s)) last_nonwhite = out;
            if (stable[*s]) {
               if (!*s) break;
               if (end ? etable[*s] : nested)
                  --nested;
               else
                  ++nested;
            }
            *out++ = *s++;
         }
      }

      if (stripwhite)
         out = last_nonwhite+1;
      *out++ = '\0';

      if (*s) ++s;
   }
   s = (unsigned char *) delimit; while (*s) stb_tokentable[*s++] = 0;
   if (start) {
      s = (unsigned char *) start; while (*s) stable[*s++] = 1;
      s = (unsigned char *) end; if (s) while (*s) stable[*s++] = 1;
      s = (unsigned char *) end; if (s) while (*s) etable[*s++] = 1;
   }
   if (count != ((void*)0)) *count = num;
   result[num] = 0;
   return result;
}
