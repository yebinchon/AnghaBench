
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zpool_handle_t ;
struct TYPE_2__ {scalar_t__ cb_guid; int * cb_zhp; } ;
typedef TYPE_1__ find_cbdata_t ;


 int ZPOOL_PROP_GUID ;
 int zpool_close (int *) ;
 scalar_t__ zpool_get_prop_int (int *,int ,int *) ;

__attribute__((used)) static int
find_pool(zpool_handle_t *zhp, void *data)
{
 find_cbdata_t *cbp = data;

 if (cbp->cb_guid ==
     zpool_get_prop_int(zhp, ZPOOL_PROP_GUID, ((void*)0))) {
  cbp->cb_zhp = zhp;
  return (1);
 }

 zpool_close(zhp);
 return (0);
}
