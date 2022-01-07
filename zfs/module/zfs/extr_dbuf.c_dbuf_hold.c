
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dnode_t ;
typedef int dmu_buf_impl_t ;


 int * dbuf_hold_level (int *,int ,int ,void*) ;

dmu_buf_impl_t *
dbuf_hold(dnode_t *dn, uint64_t blkid, void *tag)
{
 return (dbuf_hold_level(dn, 0, blkid, tag));
}
