
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
 int zpool_sync_one ;

__attribute__((used)) static int
zpool_do_sync(int argc, char **argv)
{
 int ret;
 boolean_t force = B_FALSE;


 while ((ret = getopt(argc, argv, "f")) != -1) {
  switch (ret) {
  case 'f':
   force = B_TRUE;
   break;
  case '?':
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   usage(B_FALSE);
  }
 }

 argc -= optind;
 argv += optind;


 ret = for_each_pool(argc, argv, B_FALSE, ((void*)0), zpool_sync_one, &force);

 return (ret);
}
