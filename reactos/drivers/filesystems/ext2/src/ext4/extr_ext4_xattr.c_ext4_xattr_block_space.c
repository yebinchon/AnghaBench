
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ext4_xattr_ref {TYPE_1__* fs; } ;
typedef int __s32 ;
struct TYPE_2__ {int BlockSize; } ;



__attribute__((used)) static __s32 ext4_xattr_block_space(struct ext4_xattr_ref *xattr_ref)
{
 return xattr_ref->fs->BlockSize;
}
