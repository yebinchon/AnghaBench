
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atoi (char*) ;
 scalar_t__ bsize ;
 scalar_t__ count ;
 char* execname ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 char* ifile ;
 char* ofile ;
 scalar_t__ seek ;
 int stderr ;
 scalar_t__ stride ;
 int usage () ;

__attribute__((used)) static void
parse_options(int argc, char *argv[])
{
 int c;
 int errflag = 0;

 execname = argv[0];

 extern char *optarg;
 extern int optind, optopt;

 while ((c = getopt(argc, argv, ":b:c:i:o:s:k:")) != -1) {
  switch (c) {
   case 'b':
    bsize = atoi(optarg);
    break;

   case 'c':
    count = atoi(optarg);
    break;

   case 'i':
    ifile = optarg;
    break;

   case 'o':
    ofile = optarg;
    break;

   case 's':
    stride = atoi(optarg);
    break;

   case 'k':
    seek = atoi(optarg);
    break;

   case ':':
    (void) fprintf(stderr,
        "Option -%c requires an operand\n", optopt);
    errflag++;
    break;

   case '?':
   default:
    (void) fprintf(stderr,
        "Unrecognized option: -%c\n", optopt);
    errflag++;
    break;
  }

  if (errflag) {
   (void) usage();
  }
 }

 if (bsize <= 0 || count <= 0 || stride <= 0 || ifile == ((void*)0) ||
     ofile == ((void*)0) || seek < 0) {
  (void) fprintf(stderr,
      "Required parameter(s) missing or invalid.\n");
  (void) usage();
 }
}
