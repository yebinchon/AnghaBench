
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* hardforce; void* force; } ;
typedef TYPE_1__ export_cbdata_t ;
typedef void* boolean_t ;


 void* B_FALSE ;
 void* B_TRUE ;
 int for_each_pool (int,char**,void*,int *,int ,TYPE_1__*) ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 scalar_t__ optind ;
 int optopt ;
 int stderr ;
 int usage (void*) ;
 int zpool_export_one ;

int
zpool_do_export(int argc, char **argv)
{
 export_cbdata_t cb;
 boolean_t do_all = B_FALSE;
 boolean_t force = B_FALSE;
 boolean_t hardforce = B_FALSE;
 int c, ret;


 while ((c = getopt(argc, argv, "afF")) != -1) {
  switch (c) {
  case 'a':
   do_all = B_TRUE;
   break;
  case 'f':
   force = B_TRUE;
   break;
  case 'F':
   hardforce = B_TRUE;
   break;
  case '?':
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   usage(B_FALSE);
  }
 }

 cb.force = force;
 cb.hardforce = hardforce;
 argc -= optind;
 argv += optind;

 if (do_all) {
  if (argc != 0) {
   (void) fprintf(stderr, gettext("too many arguments\n"));
   usage(B_FALSE);
  }

  return (for_each_pool(argc, argv, B_TRUE, ((void*)0),
      zpool_export_one, &cb));
 }


 if (argc < 1) {
  (void) fprintf(stderr, gettext("missing pool argument\n"));
  usage(B_FALSE);
 }

 ret = for_each_pool(argc, argv, B_TRUE, ((void*)0), zpool_export_one, &cb);

 return (ret);
}
