
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zv_flags; int zv_suspend_lock; int zv_state_lock; int zv_volblocksize; int zv_objset; } ;
typedef TYPE_1__ zvol_state_t ;
typedef int uint64_t ;
typedef int dmu_tx_t ;


 int ASSERT (int ) ;
 int EBUSY ;
 int ENOTSUP ;
 int ENXIO ;
 int EROFS ;
 int MUTEX_HELD (int *) ;
 int RW_READER ;
 int RW_READ_HELD (int *) ;
 int SET_ERROR (int) ;
 int TXG_WAIT ;
 int ZVOL_OBJ ;
 int ZVOL_RDONLY ;
 int dmu_object_set_blocksize (int ,int ,int ,int ,int *) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (int ) ;
 int dmu_tx_hold_bonus (int *,int ) ;
 int mutex_exit (int *) ;
 int rw_exit (int *) ;
 TYPE_1__* zvol_find_by_name (char const*,int ) ;

int
zvol_set_volblocksize(const char *name, uint64_t volblocksize)
{
 zvol_state_t *zv;
 dmu_tx_t *tx;
 int error;

 zv = zvol_find_by_name(name, RW_READER);

 if (zv == ((void*)0))
  return (SET_ERROR(ENXIO));

 ASSERT(MUTEX_HELD(&zv->zv_state_lock));
 ASSERT(RW_READ_HELD(&zv->zv_suspend_lock));

 if (zv->zv_flags & ZVOL_RDONLY) {
  mutex_exit(&zv->zv_state_lock);
  rw_exit(&zv->zv_suspend_lock);
  return (SET_ERROR(EROFS));
 }

 tx = dmu_tx_create(zv->zv_objset);
 dmu_tx_hold_bonus(tx, ZVOL_OBJ);
 error = dmu_tx_assign(tx, TXG_WAIT);
 if (error) {
  dmu_tx_abort(tx);
 } else {
  error = dmu_object_set_blocksize(zv->zv_objset, ZVOL_OBJ,
      volblocksize, 0, tx);
  if (error == ENOTSUP)
   error = SET_ERROR(EBUSY);
  dmu_tx_commit(tx);
  if (error == 0)
   zv->zv_volblocksize = volblocksize;
 }

 mutex_exit(&zv->zv_state_lock);
 rw_exit(&zv->zv_suspend_lock);

 return (SET_ERROR(error));
}
