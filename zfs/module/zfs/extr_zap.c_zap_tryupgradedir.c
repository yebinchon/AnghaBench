
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zap_dbuf; int zap_rwlock; } ;
typedef TYPE_1__ zap_t ;
typedef int dmu_tx_t ;


 scalar_t__ RW_WRITE_HELD (int *) ;
 int dmu_buf_will_dirty (int ,int *) ;
 scalar_t__ rw_tryupgrade (int *) ;

__attribute__((used)) static int
zap_tryupgradedir(zap_t *zap, dmu_tx_t *tx)
{
 if (RW_WRITE_HELD(&zap->zap_rwlock))
  return (1);
 if (rw_tryupgrade(&zap->zap_rwlock)) {
  dmu_buf_will_dirty(zap->zap_dbuf, tx);
  return (1);
 }
 return (0);
}
