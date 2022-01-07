
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zap_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int matchtype_t ;
typedef int dmu_tx_t ;


 int FALSE ;
 int FTAG ;
 int RW_WRITER ;
 int TRUE ;
 int zap_lockdir (int *,int ,int *,int ,int ,int ,int ,int **) ;
 int zap_remove_impl (int *,char const*,int ,int *) ;
 int zap_unlockdir (int *,int ) ;

int
zap_remove_norm(objset_t *os, uint64_t zapobj, const char *name,
    matchtype_t mt, dmu_tx_t *tx)
{
 zap_t *zap;
 int err;

 err = zap_lockdir(os, zapobj, tx, RW_WRITER, TRUE, FALSE, FTAG, &zap);
 if (err)
  return (err);
 err = zap_remove_impl(zap, name, mt, tx);
 zap_unlockdir(zap, FTAG);
 return (err);
}
