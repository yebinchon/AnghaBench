
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void usage(void)
{
 fprintf(stderr,
  "usage: mutool clean [options] input.pdf [output.pdf] [pages]\n"
  "\t-p -\tpassword\n"
  "\t-g\tgarbage collect unused objects\n"
  "\t-gg\tin addition to -g compact xref table\n"
  "\t-ggg\tin addition to -gg merge duplicate objects\n"
  "\t-gggg\tin addition to -ggg check streams for duplication\n"
  "\t-l\tlinearize PDF\n"
  "\t-D\tsave file without encryption\n"
  "\t-E -\tsave file with new encryption (rc4-40, rc4-128, aes-128, or aes-256)\n"
  "\t-O -\towner password (only if encrypting)\n"
  "\t-U -\tuser password (only if encrypting)\n"
  "\t-P -\tpermission flags (only if encrypting)\n"
  "\t-a\tascii hex encode binary streams\n"
  "\t-d\tdecompress streams\n"
  "\t-z\tdeflate uncompressed streams\n"
  "\t-f\tcompress font streams\n"
  "\t-i\tcompress image streams\n"
  "\t-c\tclean content streams\n"
  "\t-s\tsanitize content streams\n"
  "\t-A\tcreate appearance streams for annotations\n"
  "\t-AA\trecreate appearance streams for annotations\n"
  "\tpages\tcomma separated list of page numbers and ranges\n"
  );
 exit(1);
}
