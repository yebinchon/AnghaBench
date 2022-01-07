
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fgetc (int *) ;
 scalar_t__ fprintf (int *,char*,...) ;
 scalar_t__ string ;

__attribute__((used)) static int
hexdump(FILE *fo, FILE *fi)
{
 int c, n;

 if (string)
  fprintf(fo, "\"");

 n = 0;
 c = fgetc(fi);
 while (c != -1)
 {
  n += fprintf(fo, string ? "\\x%02x" : "%d,", c);
  if (n > 72) {
   fprintf(fo, string ? "\"\n\"" : "\n");
   n = 0;
  }
  c = fgetc(fi);
 }

 if (string)
  fprintf(fo, "\"\n");

 return n;
}
