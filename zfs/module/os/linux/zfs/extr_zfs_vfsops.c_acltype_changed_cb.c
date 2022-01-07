
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int z_acl_type; TYPE_1__* z_sb; } ;
typedef TYPE_2__ zfsvfs_t ;
typedef int uint64_t ;
struct TYPE_3__ {int s_flags; } ;


 int SB_POSIXACL ;



__attribute__((used)) static void
acltype_changed_cb(void *arg, uint64_t newval)
{
 zfsvfs_t *zfsvfs = arg;

 switch (newval) {
 case 129:
  zfsvfs->z_acl_type = 129;
  zfsvfs->z_sb->s_flags &= ~SB_POSIXACL;
  break;
 case 128:




  zfsvfs->z_acl_type = 129;
  zfsvfs->z_sb->s_flags &= ~SB_POSIXACL;

  break;
 default:
  break;
 }
}
