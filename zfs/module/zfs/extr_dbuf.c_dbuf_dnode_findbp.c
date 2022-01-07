
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;
struct TYPE_6__ {TYPE_1__* dn_phys; int dn_struct_rwlock; } ;
typedef TYPE_2__ dnode_t ;
typedef int dmu_buf_impl_t ;
typedef int blkptr_t ;
struct TYPE_5__ {int dn_indblkshift; int dn_datablkszsec; } ;


 int ASSERT (int ) ;
 int B_FALSE ;
 int RW_LOCK_HELD (int *) ;
 int dbuf_findbp (TYPE_2__*,int ,int ,int ,int **,int **) ;
 int dbuf_rele (int *,int *) ;

int
dbuf_dnode_findbp(dnode_t *dn, uint64_t level, uint64_t blkid,
    blkptr_t *bp, uint16_t *datablkszsec, uint8_t *indblkshift)
{
 dmu_buf_impl_t *dbp = ((void*)0);
 blkptr_t *bp2;
 int err = 0;
 ASSERT(RW_LOCK_HELD(&dn->dn_struct_rwlock));

 err = dbuf_findbp(dn, level, blkid, B_FALSE, &dbp, &bp2);
 if (err == 0) {
  *bp = *bp2;
  if (dbp != ((void*)0))
   dbuf_rele(dbp, ((void*)0));
  if (datablkszsec != ((void*)0))
   *datablkszsec = dn->dn_phys->dn_datablkszsec;
  if (indblkshift != ((void*)0))
   *indblkshift = dn->dn_phys->dn_indblkshift;
 }

 return (err);
}
