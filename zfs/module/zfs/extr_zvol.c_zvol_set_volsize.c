
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int zv_changed; int zv_state_lock; int zv_suspend_lock; int * zv_objset; scalar_t__ zv_volsize; } ;
typedef TYPE_1__ zvol_state_t ;
typedef scalar_t__ uint64_t ;
typedef int objset_t ;
struct TYPE_10__ {int doi_data_block_size; } ;
typedef TYPE_2__ dmu_object_info_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_11__ {int (* zv_update_volsize ) (TYPE_1__*,scalar_t__) ;} ;


 int ASSERT (int) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int DMU_OST_ZVOL ;
 int EROFS ;
 int FTAG ;
 int KM_SLEEP ;
 scalar_t__ MUTEX_HELD (int *) ;
 int RW_READER ;
 scalar_t__ RW_READ_HELD (int *) ;
 int SET_ERROR (int) ;
 int ZFS_PROP_READONLY ;
 int ZVOL_OBJ ;
 int dmu_object_info (int *,int ,TYPE_2__*) ;
 int dmu_objset_disown (int *,scalar_t__,int ) ;
 int dmu_objset_own (char const*,int ,scalar_t__,scalar_t__,int ,int **) ;
 int dsl_prop_get_integer (char const*,int ,scalar_t__*,int *) ;
 TYPE_2__* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_2__*,int) ;
 int mutex_exit (int *) ;
 TYPE_5__* ops ;
 int rw_exit (int *) ;
 int stub1 (TYPE_1__*,scalar_t__) ;
 int zfs_prop_to_name (int ) ;
 int zvol_check_volsize (scalar_t__,int ) ;
 TYPE_1__* zvol_find_by_name (char const*,int ) ;
 int zvol_update_volsize (scalar_t__,int *) ;

int
zvol_set_volsize(const char *name, uint64_t volsize)
{
 objset_t *os = ((void*)0);
 uint64_t readonly;
 int error;
 boolean_t owned = B_FALSE;

 error = dsl_prop_get_integer(name,
     zfs_prop_to_name(ZFS_PROP_READONLY), &readonly, ((void*)0));
 if (error != 0)
  return (SET_ERROR(error));
 if (readonly)
  return (SET_ERROR(EROFS));

 zvol_state_t *zv = zvol_find_by_name(name, RW_READER);

 ASSERT(zv == ((void*)0) || (MUTEX_HELD(&zv->zv_state_lock) &&
     RW_READ_HELD(&zv->zv_suspend_lock)));

 if (zv == ((void*)0) || zv->zv_objset == ((void*)0)) {
  if (zv != ((void*)0))
   rw_exit(&zv->zv_suspend_lock);
  if ((error = dmu_objset_own(name, DMU_OST_ZVOL, B_FALSE, B_TRUE,
      FTAG, &os)) != 0) {
   if (zv != ((void*)0))
    mutex_exit(&zv->zv_state_lock);
   return (SET_ERROR(error));
  }
  owned = B_TRUE;
  if (zv != ((void*)0))
   zv->zv_objset = os;
 } else {
  os = zv->zv_objset;
 }

 dmu_object_info_t *doi = kmem_alloc(sizeof (*doi), KM_SLEEP);

 if ((error = dmu_object_info(os, ZVOL_OBJ, doi)) ||
     (error = zvol_check_volsize(volsize, doi->doi_data_block_size)))
  goto out;

 error = zvol_update_volsize(volsize, os);
 if (error == 0 && zv != ((void*)0)) {
  zv->zv_volsize = volsize;
  zv->zv_changed = 1;
 }
out:
 kmem_free(doi, sizeof (dmu_object_info_t));

 if (owned) {
  dmu_objset_disown(os, B_TRUE, FTAG);
  if (zv != ((void*)0))
   zv->zv_objset = ((void*)0);
 } else {
  rw_exit(&zv->zv_suspend_lock);
 }

 if (zv != ((void*)0))
  mutex_exit(&zv->zv_state_lock);

 if (error == 0 && zv != ((void*)0))
  ops->zv_update_volsize(zv, volsize);

 return (SET_ERROR(error));
}
