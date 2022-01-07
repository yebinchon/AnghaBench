
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zap_t ;
typedef int dnode_t ;
typedef int dmu_tx_t ;


 int FALSE ;
 int FTAG ;
 int RW_WRITER ;
 int TRUE ;
 int zap_lockdir_by_dnode (int *,int *,int ,int ,int ,int ,int **) ;
 int zap_remove_impl (int *,char const*,int ,int *) ;
 int zap_unlockdir (int *,int ) ;

int
zap_remove_by_dnode(dnode_t *dn, const char *name, dmu_tx_t *tx)
{
 zap_t *zap;
 int err;

 err = zap_lockdir_by_dnode(dn, tx, RW_WRITER, TRUE, FALSE, FTAG, &zap);
 if (err)
  return (err);
 err = zap_remove_impl(zap, name, 0, tx);
 zap_unlockdir(zap, FTAG);
 return (err);
}
