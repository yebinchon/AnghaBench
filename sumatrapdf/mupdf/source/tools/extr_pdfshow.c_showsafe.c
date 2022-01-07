
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putchar (char) ;
 int showcolumn ;

__attribute__((used)) static void showsafe(unsigned char *buf, size_t n)
{
 size_t i;
 for (i = 0; i < n; i++) {
  if (buf[i] == '\r' || buf[i] == '\n') {
   putchar('\n');
   showcolumn = 0;
  }
  else if (buf[i] < 32 || buf[i] > 126) {
   putchar('.');
   showcolumn ++;
  }
  else {
   putchar(buf[i]);
   showcolumn ++;
  }
  if (showcolumn == 79) {
   putchar('\n');
   showcolumn = 0;
  }
 }
}
