
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* cb_propname; char* cb_value; int member_0; } ;
typedef TYPE_1__ set_cbdata_t ;


 int B_FALSE ;
 int B_TRUE ;
 int for_each_pool (int,char**,int ,int *,int ,TYPE_1__*) ;
 int fprintf (int ,char*,...) ;
 char* gettext (char*) ;
 int set_callback ;
 int stderr ;
 char* strchr (char*,char) ;
 int usage (int ) ;

int
zpool_do_set(int argc, char **argv)
{
 set_cbdata_t cb = { 0 };
 int error;

 if (argc > 1 && argv[1][0] == '-') {
  (void) fprintf(stderr, gettext("invalid option '%c'\n"),
      argv[1][1]);
  usage(B_FALSE);
 }

 if (argc < 2) {
  (void) fprintf(stderr, gettext("missing property=value "
      "argument\n"));
  usage(B_FALSE);
 }

 if (argc < 3) {
  (void) fprintf(stderr, gettext("missing pool name\n"));
  usage(B_FALSE);
 }

 if (argc > 3) {
  (void) fprintf(stderr, gettext("too many pool names\n"));
  usage(B_FALSE);
 }

 cb.cb_propname = argv[1];
 cb.cb_value = strchr(cb.cb_propname, '=');
 if (cb.cb_value == ((void*)0)) {
  (void) fprintf(stderr, gettext("missing value in "
      "property=value argument\n"));
  usage(B_FALSE);
 }

 *(cb.cb_value) = '\0';
 cb.cb_value++;

 error = for_each_pool(argc - 2, argv + 2, B_TRUE, ((void*)0),
     set_callback, &cb);

 return (error);
}
