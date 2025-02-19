
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int od_object; } ;
typedef TYPE_1__ ztest_od_t ;
typedef int ztest_ds_t ;
typedef int uint64_t ;


 int B_TRUE ;
 int DMU_OT_UINT64_OTHER ;
 int FTAG ;
 int OD_ARRAY_SIZE ;
 size_t SPA_MAXBLOCKSHIFT ;
 int UMEM_NOFAIL ;
 int ZTEST_RANGE_LOCKS ;
 TYPE_1__* umem_alloc (int,int ) ;
 int umem_free (TYPE_1__*,int) ;
 int ztest_io (int *,int ,size_t) ;
 scalar_t__ ztest_object_init (int *,TYPE_1__*,int,int ) ;
 int ztest_od_init (TYPE_1__*,int ,int ,int,int ,int ,int ,int ) ;
 size_t ztest_random (int) ;

void
ztest_dmu_object_alloc_free(ztest_ds_t *zd, uint64_t id)
{
 ztest_od_t *od;
 int batchsize;
 int size;
 int b;

 size = sizeof (ztest_od_t) * OD_ARRAY_SIZE;
 od = umem_alloc(size, UMEM_NOFAIL);
 batchsize = OD_ARRAY_SIZE;

 for (b = 0; b < batchsize; b++)
  ztest_od_init(od + b, id, FTAG, b, DMU_OT_UINT64_OTHER,
      0, 0, 0);





 if (ztest_object_init(zd, od, size, B_TRUE) != 0)
  return;

 while (ztest_random(4 * batchsize) != 0)
  ztest_io(zd, od[ztest_random(batchsize)].od_object,
      ztest_random(ZTEST_RANGE_LOCKS) << SPA_MAXBLOCKSHIFT);

 umem_free(od, size);
}
