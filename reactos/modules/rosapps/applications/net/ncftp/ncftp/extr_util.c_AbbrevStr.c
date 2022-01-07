
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Strncat (char*,char*,size_t) ;
 int Strncpy (char*,char*,size_t) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char const*) ;

void
AbbrevStr(char *dst, const char *src, size_t max, int mode)
{
 int len;

 len = (int) strlen(src);
 if (len > (int) max) {
  if (mode == 0) {

   (void) strcpy(dst, "...");
   (void) Strncat(dst, (char *) src + len - (int) max + 3, max + 1);
  } else {

   (void) Strncpy(dst, (char *) src, max + 1);
   (void) strcpy(dst + max - 3, "...");
  }
 } else {
  (void) Strncpy(dst, (char *) src, max + 1);
 }
}
