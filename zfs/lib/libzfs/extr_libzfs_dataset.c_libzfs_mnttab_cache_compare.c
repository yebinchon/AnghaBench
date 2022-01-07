
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mnt_special; } ;
struct TYPE_4__ {TYPE_1__ mtn_mt; } ;
typedef TYPE_2__ mnttab_node_t ;


 int TREE_ISIGN (int) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
libzfs_mnttab_cache_compare(const void *arg1, const void *arg2)
{
 const mnttab_node_t *mtn1 = (const mnttab_node_t *)arg1;
 const mnttab_node_t *mtn2 = (const mnttab_node_t *)arg2;
 int rv;

 rv = strcmp(mtn1->mtn_mt.mnt_special, mtn2->mtn_mt.mnt_special);

 return (TREE_ISIGN(rv));
}
