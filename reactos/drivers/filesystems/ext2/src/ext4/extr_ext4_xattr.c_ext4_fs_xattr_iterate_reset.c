
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_xattr_ref {int * iter_from; } ;



void ext4_fs_xattr_iterate_reset(struct ext4_xattr_ref *ref)
{
 ref->iter_from = ((void*)0);
}
