
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int exit (int) ;
 int fprintf (int *,char*,...) ;
 int * stderr ;
 int * stdout ;

__attribute__((used)) static void
usage (char *program, int error)
{
    FILE *file = error ? stderr : stdout;




    fprintf (file, "usage: %s [-vqVh] [-f FORMAT] text [pattern] {element ...} \n",
      program);

    fprintf (file, "List fonts matching [pattern] that can render [text]\n");
    fprintf (file, "\n");







    fprintf (file, "  -v         (verbose) display entire font pattern verbosely\n");
    fprintf (file, "  -f FORMAT  (format)  use the given output format\n");
    fprintf (file, "  -q,        (quiet)   suppress all normal output, exit 1 if no fonts matched\n");
    fprintf (file, "  -V         (version) display HarfBuzz version and exit\n");
    fprintf (file, "  -h         (help)    display this help and exit\n");

    exit (error);
}
