
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int fputs (int ,int ) ;
 int fz_pdf_write_options_usage ;
 int stderr ;

__attribute__((used)) static void usage(void)
{
 fprintf(stderr,
  "usage: mutool merge [-o output.pdf] [-O options] input.pdf [pages] [input2.pdf] [pages2] ...\n"
  "\t-o -\tname of PDF file to create\n"
  "\t-O -\tcomma separated list of output options\n"
  "\tinput.pdf\tname of input file from which to copy pages\n"
  "\tpages\tcomma separated list of page numbers and ranges\n\n"
  );
 fputs(fz_pdf_write_options_usage, stderr);
 exit(1);
}
