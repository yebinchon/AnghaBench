
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int dnode_t ;
typedef int dmu_buf_t ;


 int DMU_READ_NO_PREFETCH ;
 int FTAG ;
 int dmu_bonus_hold_by_dnode (int *,void*,int **,int ) ;
 int dnode_hold (int *,int ,int ,int **) ;
 int dnode_rele (int *,int ) ;

int
dmu_bonus_hold(objset_t *os, uint64_t object, void *tag, dmu_buf_t **dbp)
{
 dnode_t *dn;
 int error;

 error = dnode_hold(os, object, FTAG, &dn);
 if (error)
  return (error);

 error = dmu_bonus_hold_by_dnode(dn, tag, dbp, DMU_READ_NO_PREFETCH);
 dnode_rele(dn, FTAG);

 return (error);
}
