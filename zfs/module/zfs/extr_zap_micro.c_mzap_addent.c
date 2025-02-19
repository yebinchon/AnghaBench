
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int zap_alloc_next; int zap_num_chunks; int zap_num_entries; } ;
struct TYPE_12__ {TYPE_1__ zap_m; int zap_rwlock; } ;
typedef TYPE_2__ zap_t ;
struct TYPE_13__ {int zn_hash; int zn_key_orig; TYPE_2__* zn_zap; } ;
typedef TYPE_3__ zap_name_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_14__ {scalar_t__* mze_name; scalar_t__ mze_cd; int mze_value; } ;
typedef TYPE_4__ mzap_ent_phys_t ;
struct TYPE_15__ {TYPE_4__* mz_chunk; } ;


 int ASSERT (int) ;
 int CE_PANIC ;
 int RW_WRITE_HELD (int *) ;
 int cmn_err (int ,char*) ;
 scalar_t__ mze_find_unused_cd (TYPE_2__*,int ) ;
 int mze_insert (TYPE_2__*,int,int ) ;
 scalar_t__ strcmp (int ,scalar_t__*) ;
 int strlcpy (scalar_t__*,int ,int) ;
 TYPE_6__* zap_m_phys (TYPE_2__*) ;
 scalar_t__ zap_maxcd (TYPE_2__*) ;

__attribute__((used)) static void
mzap_addent(zap_name_t *zn, uint64_t value)
{
 zap_t *zap = zn->zn_zap;
 int start = zap->zap_m.zap_alloc_next;

 ASSERT(RW_WRITE_HELD(&zap->zap_rwlock));
 uint32_t cd = mze_find_unused_cd(zap, zn->zn_hash);

 ASSERT(cd < zap_maxcd(zap));

again:
 for (int i = start; i < zap->zap_m.zap_num_chunks; i++) {
  mzap_ent_phys_t *mze = &zap_m_phys(zap)->mz_chunk[i];
  if (mze->mze_name[0] == 0) {
   mze->mze_value = value;
   mze->mze_cd = cd;
   (void) strlcpy(mze->mze_name, zn->zn_key_orig,
       sizeof (mze->mze_name));
   zap->zap_m.zap_num_entries++;
   zap->zap_m.zap_alloc_next = i+1;
   if (zap->zap_m.zap_alloc_next ==
       zap->zap_m.zap_num_chunks)
    zap->zap_m.zap_alloc_next = 0;
   mze_insert(zap, i, zn->zn_hash);
   return;
  }
 }
 if (start != 0) {
  start = 0;
  goto again;
 }
 cmn_err(CE_PANIC, "out of entries!");
}
