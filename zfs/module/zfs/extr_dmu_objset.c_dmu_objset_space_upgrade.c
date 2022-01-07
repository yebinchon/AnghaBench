
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {int os_upgrade_lock; scalar_t__ os_upgrade_exit; } ;
typedef TYPE_1__ objset_t ;
typedef int dmu_tx_t ;
typedef int dmu_buf_t ;


 int EINTR ;
 int FALSE ;
 int FORREAL ;
 int FTAG ;
 int JUSTLOOKING ;
 int SET_ERROR (int ) ;
 int TXG_WAIT ;
 int dmu_bonus_hold (TYPE_1__*,scalar_t__,int ,int **) ;
 int dmu_buf_rele (int *,int ) ;
 int dmu_buf_will_dirty (int *,int *) ;
 int dmu_object_next (TYPE_1__*,scalar_t__*,int ,int ) ;
 int dmu_tx_abort (int *) ;
 int dmu_tx_assign (int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create (TYPE_1__*) ;
 int dmu_tx_hold_bonus (int *,scalar_t__) ;
 scalar_t__ issig (int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static int
dmu_objset_space_upgrade(objset_t *os)
{
 uint64_t obj;
 int err = 0;
 for (obj = 0; err == 0; err = dmu_object_next(os, &obj, FALSE, 0)) {
  dmu_tx_t *tx;
  dmu_buf_t *db;
  int objerr;

  mutex_enter(&os->os_upgrade_lock);
  if (os->os_upgrade_exit)
   err = SET_ERROR(EINTR);
  mutex_exit(&os->os_upgrade_lock);
  if (err != 0)
   return (err);

  if (issig(JUSTLOOKING) && issig(FORREAL))
   return (SET_ERROR(EINTR));

  objerr = dmu_bonus_hold(os, obj, FTAG, &db);
  if (objerr != 0)
   continue;
  tx = dmu_tx_create(os);
  dmu_tx_hold_bonus(tx, obj);
  objerr = dmu_tx_assign(tx, TXG_WAIT);
  if (objerr != 0) {
   dmu_buf_rele(db, FTAG);
   dmu_tx_abort(tx);
   continue;
  }
  dmu_buf_will_dirty(db, tx);
  dmu_buf_rele(db, FTAG);
  dmu_tx_commit(tx);
 }
 return (0);
}
