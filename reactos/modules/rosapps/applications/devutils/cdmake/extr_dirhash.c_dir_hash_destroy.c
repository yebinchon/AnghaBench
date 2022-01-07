
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_dir_hash {int root; } ;


 int dir_hash_destroy_dir (struct target_dir_hash*,int *) ;

void dir_hash_destroy(struct target_dir_hash *dh)
{
    dir_hash_destroy_dir(dh, &dh->root);
}
