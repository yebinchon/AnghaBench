
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;


 int B_FALSE ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 scalar_t__ optind ;
 int optopt ;
 int stderr ;
 int usage (int ) ;
 int zpool_close (int *) ;
 int * zpool_open (int ,char*) ;
 int zpool_reguid (int *) ;

int
zpool_do_reguid(int argc, char **argv)
{
 int c;
 char *poolname;
 zpool_handle_t *zhp;
 int ret = 0;


 while ((c = getopt(argc, argv, "")) != -1) {
  switch (c) {
  case '?':
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   usage(B_FALSE);
  }
 }

 argc -= optind;
 argv += optind;


 if (argc < 1) {
  (void) fprintf(stderr, gettext("missing pool name\n"));
  usage(B_FALSE);
 }

 if (argc > 1) {
  (void) fprintf(stderr, gettext("too many arguments\n"));
  usage(B_FALSE);
 }

 poolname = argv[0];
 if ((zhp = zpool_open(g_zfs, poolname)) == ((void*)0))
  return (1);

 ret = zpool_reguid(zhp);

 zpool_close(zhp);
 return (ret);
}
