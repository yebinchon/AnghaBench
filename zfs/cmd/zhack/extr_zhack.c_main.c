
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char** path; int paths; void* cachefile; } ;


 int B_FALSE ;
 int B_TRUE ;
 int FTAG ;
 int MAX_NUM_PATHS ;
 int assert (int) ;
 int dprintf_setup (int*,char**) ;
 int fatal (int *,int ,char*) ;
 int fprintf (int ,char*,...) ;
 TYPE_1__ g_importargs ;
 int g_pool ;
 int g_readonly ;
 int getopt (int,char**,char*) ;
 int kernel_fini () ;
 void* optarg ;
 int optind ;
 scalar_t__ spa_export (int ,int *,int ,int ) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;
 int usage () ;
 int zhack_do_feature (int,char**) ;

int
main(int argc, char **argv)
{
 extern void zfs_prop_init(void);

 char *path[MAX_NUM_PATHS];
 const char *subcommand;
 int rv = 0;
 int c;

 g_importargs.path = path;

 dprintf_setup(&argc, argv);
 zfs_prop_init();

 while ((c = getopt(argc, argv, "+c:d:")) != -1) {
  switch (c) {
  case 'c':
   g_importargs.cachefile = optarg;
   break;
  case 'd':
   assert(g_importargs.paths < MAX_NUM_PATHS);
   g_importargs.path[g_importargs.paths++] = optarg;
   break;
  default:
   usage();
   break;
  }
 }

 argc -= optind;
 argv += optind;
 optind = 1;

 if (argc == 0) {
  (void) fprintf(stderr, "error: no command specified\n");
  usage();
 }

 subcommand = argv[0];

 if (strcmp(subcommand, "feature") == 0) {
  rv = zhack_do_feature(argc, argv);
 } else {
  (void) fprintf(stderr, "error: unknown subcommand: %s\n",
      subcommand);
  usage();
 }

 if (!g_readonly && spa_export(g_pool, ((void*)0), B_TRUE, B_FALSE) != 0) {
  fatal(((void*)0), FTAG, "pool export failed; "
      "changes may not be committed to disk\n");
 }

 kernel_fini();

 return (rv);
}
