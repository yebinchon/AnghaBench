
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* zd_os; } ;
typedef TYPE_1__ ztest_ds_t ;
typedef int uint64_t ;
struct TYPE_5__ {int os_obj_lock; int os_obj_next_chunk; } ;
typedef TYPE_2__ objset_t ;


 int P2ALIGN (int ,int) ;
 int dmu_object_alloc_chunk_shift ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int ztest_random (int ) ;

void
ztest_dmu_object_next_chunk(ztest_ds_t *zd, uint64_t id)
{
 objset_t *os = zd->zd_os;
 int dnodes_per_chunk = 1 << dmu_object_alloc_chunk_shift;
 uint64_t object;





 mutex_enter(&os->os_obj_lock);
 object = ztest_random(os->os_obj_next_chunk);
 os->os_obj_next_chunk = P2ALIGN(object, dnodes_per_chunk);
 mutex_exit(&os->os_obj_lock);
}
