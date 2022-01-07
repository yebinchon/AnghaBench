
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dn_nlevels; int dn_struct_rwlock; } ;
typedef TYPE_1__ dnode_t ;
typedef int dmu_tx_t ;


 int EINVAL ;
 int RW_WRITER ;
 int SET_ERROR (int ) ;
 int dnode_set_nlevels_impl (TYPE_1__*,int,int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;

int
dnode_set_nlevels(dnode_t *dn, int nlevels, dmu_tx_t *tx)
{
 int ret = 0;

 rw_enter(&dn->dn_struct_rwlock, RW_WRITER);

 if (dn->dn_nlevels == nlevels) {
  ret = 0;
  goto out;
 } else if (nlevels < dn->dn_nlevels) {
  ret = SET_ERROR(EINVAL);
  goto out;
 }

 dnode_set_nlevels_impl(dn, nlevels, tx);

out:
 rw_exit(&dn->dn_struct_rwlock);
 return (ret);
}
