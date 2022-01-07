
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
infousage(void)
{
 fprintf(stderr,
  "usage: mutool info [options] file.pdf [pages]\n"
  "\t-p -\tpassword for decryption\n"
  "\t-F\tlist fonts\n"
  "\t-I\tlist images\n"
  "\t-M\tlist dimensions\n"
  "\t-P\tlist patterns\n"
  "\t-S\tlist shadings\n"
  "\t-X\tlist form and postscript xobjects\n"
  "\tpages\tcomma separated list of page numbers and ranges\n"
  );
 exit(1);
}
