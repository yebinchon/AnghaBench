
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 scalar_t__ errflag ;
 char* filename ;
 int fprintf (int ,char*,...) ;
 int fsize ;
 int ftruncflag ;
 int getopt (int,char**,char*) ;
 int stderr ;
 int usage (char*) ;

__attribute__((used)) static void
parse_options(int argc, char *argv[])
{
 int c;
 extern char *optarg;
 extern int optind, optopt;

 while ((c = getopt(argc, argv, "s:f")) != -1) {
  switch (c) {
   case 's':
    fsize = atoi(optarg);
    break;
   case 'f':
    ftruncflag++;
    break;
   case ':':
    (void) fprintf(stderr,
        "Option -%c requires an operand\n", optopt);
    errflag++;
    break;
  }
  if (errflag) {
   (void) usage(argv[0]);
  }
 }

 if (argc <= optind) {
  (void) fprintf(stderr, "No filename specified\n");
  usage(argv[0]);
 }
 filename = argv[optind];
}
