
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ B_FALSE ;
 int domain_tree ;
 scalar_t__ fuid_table_loaded ;
 int idx_tree ;
 int zfs_fuid_table_destroy (int *,int *) ;

__attribute__((used)) static void
fuid_table_destroy(void)
{
 if (fuid_table_loaded) {
  zfs_fuid_table_destroy(&idx_tree, &domain_tree);
  fuid_table_loaded = B_FALSE;
 }
}
