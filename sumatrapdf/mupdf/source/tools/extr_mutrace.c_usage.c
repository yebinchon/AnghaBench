
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
  "Usage: mutool trace [options] file [pages]\n"
  "\t-p -\tpassword\n"
  "\n"
  "\t-W -\tpage width for EPUB layout\n"
  "\t-H -\tpage height for EPUB layout\n"
  "\t-S -\tfont size for EPUB layout\n"
  "\t-U -\tfile name of user stylesheet for EPUB layout\n"
  "\t-X\tdisable document styles for EPUB layout\n"
  "\n"
  "\t-d\tuse display list\n"
  "\n"
  "\tpages\tcomma separated list of page numbers and ranges\n"
  );
 exit(1);
}
