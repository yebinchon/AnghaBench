
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int zap_avl; } ;
struct TYPE_11__ {int zap_ismicro; TYPE_1__ zap_m; int zap_rwlock; } ;
typedef TYPE_2__ zap_t ;
typedef int uint64_t ;
struct TYPE_12__ {int mze_chunkid; int mze_cd; int mze_hash; } ;
typedef TYPE_3__ mzap_ent_t ;
struct TYPE_13__ {scalar_t__* mze_name; int mze_cd; } ;


 int ASSERT (int) ;
 int KM_SLEEP ;
 TYPE_7__* MZE_PHYS (TYPE_2__*,TYPE_3__*) ;
 int RW_WRITE_HELD (int *) ;
 int avl_add (int *,TYPE_3__*) ;
 TYPE_3__* kmem_alloc (int,int ) ;

__attribute__((used)) static void
mze_insert(zap_t *zap, int chunkid, uint64_t hash)
{
 ASSERT(zap->zap_ismicro);
 ASSERT(RW_WRITE_HELD(&zap->zap_rwlock));

 mzap_ent_t *mze = kmem_alloc(sizeof (mzap_ent_t), KM_SLEEP);
 mze->mze_chunkid = chunkid;
 mze->mze_hash = hash;
 mze->mze_cd = MZE_PHYS(zap, mze)->mze_cd;
 ASSERT(MZE_PHYS(zap, mze)->mze_name[0] != 0);
 avl_add(&zap->zap_m.zap_avl, mze);
}
