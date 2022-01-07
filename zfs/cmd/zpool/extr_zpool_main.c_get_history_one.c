
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zpool_handle_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
struct TYPE_3__ {void* first; } ;
typedef TYPE_1__ hist_cbdata_t ;
typedef void* boolean_t ;


 void* B_FALSE ;
 char* gettext (char*) ;
 int nvlist_free (int *) ;
 int print_history_records (int *,TYPE_1__*) ;
 int printf (char*,...) ;
 int zpool_get_history (int *,int **,int *,void**) ;
 char* zpool_get_name (int *) ;

__attribute__((used)) static int
get_history_one(zpool_handle_t *zhp, void *data)
{
 nvlist_t *nvhis;
 int ret;
 hist_cbdata_t *cb = (hist_cbdata_t *)data;
 uint64_t off = 0;
 boolean_t eof = B_FALSE;

 cb->first = B_FALSE;

 (void) printf(gettext("History for '%s':\n"), zpool_get_name(zhp));

 while (!eof) {
  if ((ret = zpool_get_history(zhp, &nvhis, &off, &eof)) != 0)
   return (ret);

  print_history_records(nvhis, cb);
  nvlist_free(nvhis);
 }
 (void) printf("\n");

 return (ret);
}
