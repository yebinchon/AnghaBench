
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int DEFMAXPENDING ;
 int MAXMAXPENDING ;
 int OPT_DEBUG ;
 int OPT_POLL ;
 int VERSION_MESSAGE (char*) ;
 int aargh (char*) ;
 int atoi (char*) ;
 char* config_text ;
 int exit (int) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*,int) ;
 int fputs (int ,int *) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int perror (char*) ;
 int printhelp (int *) ;
 int proclog (int *,int *,int,int) ;
 char* progname ;
 int stderr ;
 int * stdin ;
 int * stdout ;
 int strcmp (char*,char*) ;
 int strncmp (char*,char*,int) ;
 int usage () ;

int main(int argc, char *argv[]) {
  int c, opts, maxpending;
  extern char *optarg;
  FILE *inf;

  if (argv[1] && !strncmp(argv[1],"--",2)) {
    if (!strcmp(argv[1],"--help")) {
      printhelp(stdout);
    } else if (!strcmp(argv[1],"--version")) {
      fputs(VERSION_MESSAGE("adnslogres"),stdout);
    } else {
      usage();
    }
    if (ferror(stdout) || fclose(stdout)) { perror("stdout"); exit(1); }
    exit(0);
  }

  maxpending= DEFMAXPENDING;
  opts= 0;
  while ((c= getopt(argc, argv, "c:C:dp")) != -1)
    switch (c) {
    case 'c':
      maxpending= atoi(optarg);
      if (maxpending < 1 || maxpending > MAXMAXPENDING) {
       fprintf(stderr, "%s: unfeasible concurrency %d\n", progname, maxpending);
       exit(1);
      }
      break;
    case 'C':
      config_text= optarg;
      break;
    case 'd':
      opts|= OPT_DEBUG;
      break;





    default:
      usage();
    }

  argc-= optind;
  argv+= optind;

  inf= ((void*)0);
  if (argc == 0)
    inf= stdin;
  else if (argc == 1)
    inf= fopen(*argv, "r");
  else
    usage();

  if (!inf)
    aargh("couldn't open input");

  proclog(inf, stdout, maxpending, opts);

  if (fclose(inf))
    aargh("fclose input");
  if (fclose(stdout))
    aargh("fclose output");

  return 0;
}
