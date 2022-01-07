
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPT_STRING ;
 int PRINT_FATAL (char*,int ) ;
 char* TINI_VERSION_STRING ;
 int add_expect_status (int ) ;
 char*** calloc (int const,int) ;
 int errno ;
 int fprintf (int ,char*,char*) ;
 int getopt (int const,char* const*,int ) ;
 int kill_process_group ;
 int optarg ;
 int const optind ;
 int print_license (int ) ;
 int print_usage (char*,int ) ;
 int set_pdeathsig (int ) ;
 int stderr ;
 int stdout ;
 scalar_t__ strcmp (char*,char* const) ;
 int strerror (int ) ;
 int subreaper ;
 int verbosity ;
 int warn_on_reap ;

int parse_args(const int argc, char* const argv[], char* (**child_args_ptr_ptr)[], int* const parse_fail_exitcode_ptr) {
 char* name = argv[0];


 if (argc == 2 && strcmp("--version", argv[1]) == 0) {
  *parse_fail_exitcode_ptr = 0;
  fprintf(stdout, "%s\n", TINI_VERSION_STRING);
  return 1;
 }


 int c;
 while ((c = getopt(argc, argv, OPT_STRING)) != -1) {
  switch (c) {
   case 'h':
    print_usage(name, stdout);
    *parse_fail_exitcode_ptr = 0;
    return 1;





   case 'p':
    if (set_pdeathsig(optarg)) {
     PRINT_FATAL("Not a valid option for -p: %s", optarg);
     *parse_fail_exitcode_ptr = 1;
     return 1;
    }
    break;

   case 'v':
    verbosity++;
    break;

   case 'w':
    warn_on_reap++;
    break;

   case 'g':
    kill_process_group++;
    break;

   case 'e':
    if (add_expect_status(optarg)) {
     PRINT_FATAL("Not a valid option for -e: %s", optarg);
     *parse_fail_exitcode_ptr = 1;
     return 1;
    }
    break;

   case 'l':
    print_license(stdout);
    *parse_fail_exitcode_ptr = 0;
    return 1;

   case '?':
    print_usage(name, stderr);
    return 1;
   default:

    return 1;
  }
 }


 *child_args_ptr_ptr = calloc(argc-optind+1, sizeof(char*));
 if (*child_args_ptr_ptr == ((void*)0)) {
  PRINT_FATAL("Failed to allocate memory for child args: '%s'", strerror(errno));
  return 1;
 }

 int i;
 for (i = 0; i < argc - optind; i++) {
  (**child_args_ptr_ptr)[i] = argv[optind+i];
 }
 (**child_args_ptr_ptr)[i] = ((void*)0);

 if (i == 0) {

  print_usage(name, stderr);
  return 1;
 }

 return 0;
}
