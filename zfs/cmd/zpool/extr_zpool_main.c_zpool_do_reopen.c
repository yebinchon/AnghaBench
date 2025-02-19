
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int for_each_pool (int,char**,int ,int *,int ,int *) ;
 int fprintf (int ,char*,int) ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 scalar_t__ optind ;
 int optopt ;
 int stderr ;
 int usage (int ) ;
 int zpool_reopen_one ;

int
zpool_do_reopen(int argc, char **argv)
{
 int c;
 int ret = 0;
 boolean_t scrub_restart = B_TRUE;


 while ((c = getopt(argc, argv, "n")) != -1) {
  switch (c) {
  case 'n':
   scrub_restart = B_FALSE;
   break;
  case '?':
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   usage(B_FALSE);
  }
 }

 argc -= optind;
 argv += optind;


 ret = for_each_pool(argc, argv, B_TRUE, ((void*)0), zpool_reopen_one,
     &scrub_restart);

 return (ret);
}
