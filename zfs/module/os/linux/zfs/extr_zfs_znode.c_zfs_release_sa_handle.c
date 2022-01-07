
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sa_handle_t ;
typedef int dmu_buf_t ;


 int sa_buf_rele (int *,void*) ;
 int sa_handle_destroy (int *) ;

void
zfs_release_sa_handle(sa_handle_t *hdl, dmu_buf_t *db, void *tag)
{
 sa_handle_destroy(hdl);
 sa_buf_rele(db, tag);
}
