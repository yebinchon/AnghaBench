
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iostat_cbdata_t ;


 scalar_t__ are_vdevs_in_pool (int,char**,char*,int *) ;
 int fprintf (int ,char*,char*,char*) ;
 char* gettext (char*) ;
 scalar_t__ is_pool (char*) ;
 int stderr ;

__attribute__((used)) static void
error_list_unresolved_vdevs(int argc, char **argv, char *pool_name,
    iostat_cbdata_t *cb)
{
 int i;
 char *name;
 char *str;
 for (i = 0; i < argc; i++) {
  name = argv[i];

  if (is_pool(name))
   str = gettext("pool");
  else if (are_vdevs_in_pool(1, &name, pool_name, cb))
   str = gettext("vdev in this pool");
  else if (are_vdevs_in_pool(1, &name, ((void*)0), cb))
   str = gettext("vdev in another pool");
  else
   str = gettext("unknown");

  fprintf(stderr, "\t%s (%s)\n", name, str);
 }
}
