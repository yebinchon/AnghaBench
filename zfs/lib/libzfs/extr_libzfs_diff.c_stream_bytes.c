
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int FILE ;


 int fprintf (int *,char*,int) ;

__attribute__((used)) static void
stream_bytes(FILE *fp, const char *string)
{
 char c;

 while ((c = *string++) != '\0') {
  if (c > ' ' && c != '\\' && c < '\177') {
   (void) fprintf(fp, "%c", c);
  } else {
   (void) fprintf(fp, "\\%04o", (uint8_t)c);
  }
 }
}
