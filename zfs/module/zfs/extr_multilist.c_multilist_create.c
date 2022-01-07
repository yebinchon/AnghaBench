
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int multilist_t ;
typedef int multilist_sublist_index_func_t ;


 int MAX (int ,int) ;
 int boot_ncpus ;
 int * multilist_create_impl (size_t,size_t,int,int *) ;
 int zfs_multilist_num_sublists ;

multilist_t *
multilist_create(size_t size, size_t offset,
    multilist_sublist_index_func_t *index_func)
{
 int num_sublists;

 if (zfs_multilist_num_sublists > 0) {
  num_sublists = zfs_multilist_num_sublists;
 } else {
  num_sublists = MAX(boot_ncpus, 4);
 }

 return (multilist_create_impl(size, offset, num_sublists, index_func));
}
