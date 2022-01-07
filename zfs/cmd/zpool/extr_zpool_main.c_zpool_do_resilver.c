
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cb_scrub_cmd; int cb_type; } ;
typedef TYPE_1__ scrub_cbdata_t ;


 int B_FALSE ;
 int B_TRUE ;
 int POOL_SCAN_RESILVER ;
 int POOL_SCRUB_NORMAL ;
 int for_each_pool (int,char**,int ,int *,int ,TYPE_1__*) ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 scalar_t__ optind ;
 int optopt ;
 int scrub_callback ;
 int stderr ;
 int usage (int ) ;

int
zpool_do_resilver(int argc, char **argv)
{
 int c;
 scrub_cbdata_t cb;

 cb.cb_type = POOL_SCAN_RESILVER;
 cb.cb_scrub_cmd = POOL_SCRUB_NORMAL;


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
  (void) fprintf(stderr, gettext("missing pool name argument\n"));
  usage(B_FALSE);
 }

 return (for_each_pool(argc, argv, B_TRUE, ((void*)0), scrub_callback, &cb));
}
