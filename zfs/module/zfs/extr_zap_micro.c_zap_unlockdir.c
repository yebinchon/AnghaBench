
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zap_dbuf; int zap_rwlock; } ;
typedef TYPE_1__ zap_t ;


 int dmu_buf_rele (int ,void*) ;
 int rw_exit (int *) ;

void
zap_unlockdir(zap_t *zap, void *tag)
{
 rw_exit(&zap->zap_rwlock);
 dmu_buf_rele(zap->zap_dbuf, tag);
}
