
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int PHASE_ALL ;
 int PHASE_INVAL ;
 int XATTR_SIZE_MAX ;
 int dropcaches ;
 int files ;
 int fprintf (int ,char*,...) ;
 int getopt_long (int,char**,int ,int ,int *) ;
 int keep_files ;
 int longopts ;
 int nth ;
 int optarg ;
 char* path ;
 int phase ;
 char* script ;
 int shortopts ;
 int size ;
 int size_is_random ;
 int srandom (long) ;
 int stderr ;
 int stdout ;
 int strncpy (char*,int ,int ) ;
 void* strtol (int ,int *,int ) ;
 int synccaches ;
 long time (int *) ;
 int usage (int,char**) ;
 int value_is_random ;
 int verbose ;
 int verify ;
 int xattrs ;

__attribute__((used)) static int
parse_args(int argc, char **argv)
{
 long seed = time(((void*)0));
 int c;
 int rc = 0;

 while ((c = getopt_long(argc, argv, shortopts, longopts, ((void*)0))) != -1) {
  switch (c) {
  case 'h':
   return (usage(argc, argv));
  case 'v':
   verbose++;
   break;
  case 'y':
   verify = 1;
   break;
  case 'n':
   nth = strtol(optarg, ((void*)0), 0);
   break;
  case 'f':
   files = strtol(optarg, ((void*)0), 0);
   break;
  case 'x':
   xattrs = strtol(optarg, ((void*)0), 0);
   break;
  case 's':
   size = strtol(optarg, ((void*)0), 0);
   if (size > XATTR_SIZE_MAX) {
    fprintf(stderr, "Error: the -s value may not "
        "be greater than %d\n", XATTR_SIZE_MAX);
    rc = 1;
   }
   break;
  case 'p':
   strncpy(path, optarg, PATH_MAX);
   path[PATH_MAX - 1] = '\0';
   break;
  case 'c':
   synccaches = 1;
   break;
  case 'd':
   dropcaches = 1;
   break;
  case 't':
   strncpy(script, optarg, PATH_MAX);
   script[PATH_MAX - 1] = '\0';
   break;
  case 'e':
   seed = strtol(optarg, ((void*)0), 0);
   break;
  case 'r':
   size_is_random = 1;
   break;
  case 'R':
   value_is_random = 1;
   break;
  case 'k':
   keep_files = 1;
   break;
  case 'o':
   phase = strtol(optarg, ((void*)0), 0);
   if (phase <= PHASE_ALL || phase >= PHASE_INVAL) {
    fprintf(stderr, "Error: the -o value must be "
        "greater than %d and less than %d\n",
        PHASE_ALL, PHASE_INVAL);
    rc = 1;
   }
   break;
  default:
   rc = 1;
   break;
  }
 }

 if (rc != 0)
  return (rc);

 srandom(seed);

 if (verbose) {
  fprintf(stdout, "verbose:          %d\n", verbose);
  fprintf(stdout, "verify:           %d\n", verify);
  fprintf(stdout, "nth:              %d\n", nth);
  fprintf(stdout, "files:            %d\n", files);
  fprintf(stdout, "xattrs:           %d\n", xattrs);
  fprintf(stdout, "size:             %d\n", size);
  fprintf(stdout, "path:             %s\n", path);
  fprintf(stdout, "synccaches:       %d\n", synccaches);
  fprintf(stdout, "dropcaches:       %d\n", dropcaches);
  fprintf(stdout, "script:           %s\n", script);
  fprintf(stdout, "seed:             %ld\n", seed);
  fprintf(stdout, "random size:      %d\n", size_is_random);
  fprintf(stdout, "random value:     %d\n", value_is_random);
  fprintf(stdout, "keep:             %d\n", keep_files);
  fprintf(stdout, "only:             %d\n", phase);
  fprintf(stdout, "%s", "\n");
 }

 return (rc);
}
