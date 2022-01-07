
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * zd_object_lock; } ;
typedef TYPE_1__ ztest_ds_t ;
typedef int uint64_t ;
typedef int rll_t ;


 int ZTEST_OBJECT_LOCKS ;
 int ztest_rll_unlock (int *) ;

__attribute__((used)) static void
ztest_object_unlock(ztest_ds_t *zd, uint64_t object)
{
 rll_t *rll = &zd->zd_object_lock[object & (ZTEST_OBJECT_LOCKS - 1)];

 ztest_rll_unlock(rll);
}
