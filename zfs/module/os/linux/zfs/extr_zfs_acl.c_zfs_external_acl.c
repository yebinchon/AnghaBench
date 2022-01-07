
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ z_is_sa; int z_sa_hdl; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_7__ {int z_acl_extern_obj; } ;
typedef TYPE_2__ zfs_acl_phys_t ;
typedef int uint64_t ;
typedef int acl_phys ;


 int ENOENT ;
 int SA_ZPL_ZNODE_ACL (int ) ;
 int VERIFY (int) ;
 int ZTOZSB (TYPE_1__*) ;
 int sa_lookup (int ,int ,TYPE_2__*,int) ;

uint64_t
zfs_external_acl(znode_t *zp)
{
 zfs_acl_phys_t acl_phys;
 int error;

 if (zp->z_is_sa)
  return (0);
 if ((error = sa_lookup(zp->z_sa_hdl, SA_ZPL_ZNODE_ACL(ZTOZSB(zp)),
     &acl_phys, sizeof (acl_phys))) == 0)
  return (acl_phys.z_acl_extern_obj);
 else {




  VERIFY(zp->z_is_sa && error == ENOENT);
  return (0);
 }
}
