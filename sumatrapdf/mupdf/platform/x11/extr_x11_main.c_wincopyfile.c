
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pdfapp_t ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char*,char*) ;
 size_t fread (char*,int,int,int *) ;
 int fwrite (char*,int,size_t,int *) ;
 int pdfapp_error (int *,char*) ;

void wincopyfile(pdfapp_t *app, char *source, char *target)
{
 FILE *in, *out;
 char buf[32 << 10];
 size_t n;

 in = fopen(source, "rb");
 if (!in)
 {
  pdfapp_error(app, "cannot open source file for copying");
  return;
 }
 out = fopen(target, "wb");
 if (!out)
 {
  pdfapp_error(app, "cannot open target file for copying");
  fclose(in);
  return;
 }

 for (;;)
 {
  n = fread(buf, 1, sizeof buf, in);
  fwrite(buf, 1, n, out);
  if (n < sizeof buf)
  {
   if (ferror(in))
    pdfapp_error(app, "cannot read data from source file");
   break;
  }
 }

 fclose(out);
 fclose(in);
}
