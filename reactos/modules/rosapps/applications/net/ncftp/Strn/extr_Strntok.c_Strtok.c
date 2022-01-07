
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char const*,int) ;

char *
Strtok(char *buf, const char *delims)
{
 static char *p = ((void*)0);
 char *start, *end;

 if (buf != ((void*)0)) {
  p = buf;
 } else {
  if (p == ((void*)0))
   return (((void*)0));
 }
 for (start = p, end = p; ; end++) {
  if (*end == '\0') {
   p = ((void*)0);
   break;
  }
  if (strchr(delims, (int) *end) != ((void*)0)) {
   *end++ = '\0';
   p = end;
   break;
  }
 }
 return (start);
}
