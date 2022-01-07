
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dnode_t ;
typedef int dmu_buf_impl_t ;


 int FALSE ;
 int dbuf_hold_impl (int *,int,int ,int ,int ,void*,int **) ;

dmu_buf_impl_t *
dbuf_hold_level(dnode_t *dn, int level, uint64_t blkid, void *tag)
{
 dmu_buf_impl_t *db;
 int err = dbuf_hold_impl(dn, level, blkid, FALSE, FALSE, tag, &db);
 return (err ? ((void*)0) : db);
}
