
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nfs_context {int dummy; } ;
struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {void* p_nfsfh; struct nfs_context* p_nfs; } ;
typedef TYPE_2__ access_sys_t ;


 scalar_t__ NFS_CHECK_STATUS (TYPE_1__*,int,void*) ;
 int VLC_UNUSED (struct nfs_context*) ;
 int assert (int) ;

__attribute__((used)) static void
nfs_open_cb(int i_status, struct nfs_context *p_nfs, void *p_data,
            void *p_private_data)
{
    VLC_UNUSED(p_nfs);
    stream_t *p_access = p_private_data;
    access_sys_t *p_sys = p_access->p_sys;
    assert(p_sys->p_nfs == p_nfs);
    if (NFS_CHECK_STATUS(p_access, i_status, p_data))
        return;

    p_sys->p_nfsfh = p_data;
}
