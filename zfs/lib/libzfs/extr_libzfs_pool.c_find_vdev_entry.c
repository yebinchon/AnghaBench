
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
typedef size_t uint_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int free (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* zpool_vdev_name (int ,TYPE_1__*,int *,int ) ;

__attribute__((used)) static int
find_vdev_entry(zpool_handle_t *zhp, nvlist_t **mchild, uint_t mchildren,
    nvlist_t **schild, uint_t schildren)
{
 uint_t mc;

 for (mc = 0; mc < mchildren; mc++) {
  uint_t sc;
  char *mpath = zpool_vdev_name(zhp->zpool_hdl, zhp,
      mchild[mc], 0);

  for (sc = 0; sc < schildren; sc++) {
   char *spath = zpool_vdev_name(zhp->zpool_hdl, zhp,
       schild[sc], 0);
   boolean_t result = (strcmp(mpath, spath) == 0);

   free(spath);
   if (result) {
    free(mpath);
    return (mc);
   }
  }

  free(mpath);
 }

 return (-1);
}
