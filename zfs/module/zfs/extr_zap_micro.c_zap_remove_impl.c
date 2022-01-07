
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int zap_num_entries; } ;
struct TYPE_12__ {TYPE_1__ zap_m; int zap_ismicro; } ;
typedef TYPE_2__ zap_t ;
typedef int zap_name_t ;
struct TYPE_13__ {size_t mze_chunkid; } ;
typedef TYPE_3__ mzap_ent_t ;
typedef int mzap_ent_phys_t ;
typedef int matchtype_t ;
typedef int dmu_tx_t ;
struct TYPE_14__ {int * mz_chunk; } ;


 int ENOENT ;
 int ENOTSUP ;
 int SET_ERROR (int ) ;
 int bzero (int *,int) ;
 int fzap_remove (int *,int *) ;
 TYPE_3__* mze_find (int *) ;
 int mze_remove (TYPE_2__*,TYPE_3__*) ;
 TYPE_6__* zap_m_phys (TYPE_2__*) ;
 int * zap_name_alloc (TYPE_2__*,char const*,int ) ;
 int zap_name_free (int *) ;

__attribute__((used)) static int
zap_remove_impl(zap_t *zap, const char *name,
    matchtype_t mt, dmu_tx_t *tx)
{
 int err = 0;

 zap_name_t *zn = zap_name_alloc(zap, name, mt);
 if (zn == ((void*)0))
  return (SET_ERROR(ENOTSUP));
 if (!zap->zap_ismicro) {
  err = fzap_remove(zn, tx);
 } else {
  mzap_ent_t *mze = mze_find(zn);
  if (mze == ((void*)0)) {
   err = SET_ERROR(ENOENT);
  } else {
   zap->zap_m.zap_num_entries--;
   bzero(&zap_m_phys(zap)->mz_chunk[mze->mze_chunkid],
       sizeof (mzap_ent_phys_t));
   mze_remove(zap, mze);
  }
 }
 zap_name_free(zn);
 return (err);
}
