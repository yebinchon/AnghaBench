
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zap_t ;
struct TYPE_5__ {int * zn_zap; } ;
typedef TYPE_1__ zap_name_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;


 int ENOTSUP ;
 int FTAG ;
 int RW_WRITER ;
 int SET_ERROR (int ) ;
 int TRUE ;
 int fzap_update (TYPE_1__*,int,int ,void const*,int ,int *) ;
 int zap_lockdir (int *,int ,int *,int ,int ,int ,int ,int **) ;
 TYPE_1__* zap_name_alloc_uint64 (int *,int const*,int) ;
 int zap_name_free (TYPE_1__*) ;
 int zap_unlockdir (int *,int ) ;

int
zap_update_uint64(objset_t *os, uint64_t zapobj, const uint64_t *key,
    int key_numints,
    int integer_size, uint64_t num_integers, const void *val, dmu_tx_t *tx)
{
 zap_t *zap;

 int err =
     zap_lockdir(os, zapobj, tx, RW_WRITER, TRUE, TRUE, FTAG, &zap);
 if (err != 0)
  return (err);
 zap_name_t *zn = zap_name_alloc_uint64(zap, key, key_numints);
 if (zn == ((void*)0)) {
  zap_unlockdir(zap, FTAG);
  return (SET_ERROR(ENOTSUP));
 }
 err = fzap_update(zn, integer_size, num_integers, val, FTAG, tx);
 zap = zn->zn_zap;
 zap_name_free(zn);
 if (zap != ((void*)0))
  zap_unlockdir(zap, FTAG);
 return (err);
}
