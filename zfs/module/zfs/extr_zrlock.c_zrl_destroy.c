
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zr_cv; int zr_refcount; int zr_mtx; } ;
typedef TYPE_1__ zrlock_t ;


 int ASSERT0 (int ) ;
 int ZRL_DESTROYED ;
 int cv_destroy (int *) ;
 int mutex_destroy (int *) ;

void
zrl_destroy(zrlock_t *zrl)
{
 ASSERT0(zrl->zr_refcount);

 mutex_destroy(&zrl->zr_mtx);
 zrl->zr_refcount = ZRL_DESTROYED;
 cv_destroy(&zrl->zr_cv);
}
