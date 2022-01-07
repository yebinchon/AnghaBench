
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int od_object; } ;
typedef TYPE_1__ ztest_od_t ;
typedef int ztest_ds_t ;
typedef unsigned long long uint64_t ;


 int B_FALSE ;
 int DMU_OT_UINT64_OTHER ;
 int FTAG ;
 int ID_PARALLEL ;
 unsigned long long SPA_MAXBLOCKSHIFT ;
 int UMEM_NOFAIL ;
 int ZTEST_RANGE_LOCKS ;
 TYPE_1__* umem_alloc (int,int ) ;
 int umem_free (TYPE_1__*,int) ;
 int ztest_io (int *,int ,unsigned long long) ;
 scalar_t__ ztest_object_init (int *,TYPE_1__*,int,int ) ;
 int ztest_od_init (TYPE_1__*,int ,int ,int ,int ,int ,int ,int ) ;
 unsigned long long ztest_random (int) ;

void
ztest_dmu_write_parallel(ztest_ds_t *zd, uint64_t id)
{
 ztest_od_t *od;

 od = umem_alloc(sizeof (ztest_od_t), UMEM_NOFAIL);
 uint64_t offset = (1ULL << (ztest_random(20) + 43)) +
     (ztest_random(ZTEST_RANGE_LOCKS) << SPA_MAXBLOCKSHIFT);






 ztest_od_init(od, ID_PARALLEL, FTAG, 0, DMU_OT_UINT64_OTHER, 0, 0, 0);

 if (ztest_object_init(zd, od, sizeof (ztest_od_t), B_FALSE) != 0)
  return;

 while (ztest_random(10) != 0)
  ztest_io(zd, od->od_object, offset);

 umem_free(od, sizeof (ztest_od_t));
}
