
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (size_t) ;
 size_t safe_strlen (char const*) ;

char* replace_char(const char* src, const char c, const char* rep)
{
 size_t i, j, k, count=0, str_len = safe_strlen(src), rep_len = safe_strlen(rep);
 char* res;

 if ((src == ((void*)0)) || (rep == ((void*)0)))
  return ((void*)0);
 for (i=0; i<str_len; i++) {
  if (src[i] == c)
   count++;
 }
 res = (char*)malloc(str_len + count*rep_len + 1);
 if (res == ((void*)0))
  return ((void*)0);
 for (i=0,j=0; i<str_len; i++) {
  if (src[i] == c) {
   for(k=0; k<rep_len; k++)
    res[j++] = rep[k];
  } else {




   res[j++] = src[i];
  }
 }
 res[j] = 0;
 return res;
}
