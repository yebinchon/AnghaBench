
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
strtokc(char *parsestr, const char *delims, char **context)
{
 char *cp;
 const char *cp2;
 char c, c2;
 char *start;

 if (parsestr == ((void*)0))
  start = *context;
 else
  start = parsestr;

 if ((start == ((void*)0)) || (delims == ((void*)0))) {
  *context = ((void*)0);
  return ((void*)0);
 }


 for (cp = start; ; ) {
next1:
  c = *cp++;
  if (c == '\0') {

   *context = ((void*)0);
   return (((void*)0));
  }
  for (cp2 = delims; ; ) {
   c2 = (char) *cp2++;
   if (c2 == '\0') {



    start = cp - 1;
    goto starttok;
   }
   if (c2 == c) {


    goto next1;
   }
  }

 }

starttok:
 for ( ; ; cp++) {
  c = *cp;
  if (c == '\0') {

   *context = cp;
   break;
  }
  for (cp2 = delims; ; ) {
   c2 = (char) *cp2++;
   if (c2 == '\0') {



    break;
   }
   if (c2 == c) {


    *cp++ = '\0';
    *context = cp;
    return (start);
   }
  }
 }
 return (start);
}
