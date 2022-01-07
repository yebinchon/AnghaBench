
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* atoi (char*) ;
 int bsize ;
 int count ;
 scalar_t__ errflag ;
 char* filename ;
 int fprintf (int ,char*,...) ;
 int fsize ;
 int getopt (int,char**,char*) ;
 void* offset ;
 int rflag ;
 int seed ;
 int srandom (int) ;
 int stderr ;
 int time (int *) ;
 int usage (char*) ;
 scalar_t__ vflag ;

__attribute__((used)) static void
parse_options(int argc, char *argv[])
{
 int c;

 extern char *optarg;
 extern int optind, optopt;

 count = fsize / bsize;
 seed = time(((void*)0));
 while ((c = getopt(argc, argv, "b:c:f:o:rs:v")) != -1) {
  switch (c) {
   case 'b':
    bsize = atoi(optarg);
    break;

   case 'c':
    count = atoi(optarg);
    break;

   case 'f':
    fsize = atoi(optarg);
    break;

   case 'o':
    offset = atoi(optarg);
    break;

   case 'r':
    rflag++;
    break;

   case 's':
    seed = atoi(optarg);
    break;

   case 'v':
    vflag++;
    break;

   case ':':
    (void) fprintf(stderr,
        "Option -%c requires an operand\n", optopt);
    errflag++;
    break;

   case '?':
    (void) fprintf(stderr,
        "Unrecognized option: -%c\n", optopt);
    errflag++;
    break;
  }

  if (errflag) {
   (void) usage(argv[0]);
  }
 }
 if (argc <= optind) {
  (void) fprintf(stderr,
      "No filename specified\n");
  usage(argv[0]);
 }
 filename = argv[optind];

 if (vflag) {
  (void) fprintf(stderr, "Seed = %d\n", seed);
 }
 srandom(seed);
}
