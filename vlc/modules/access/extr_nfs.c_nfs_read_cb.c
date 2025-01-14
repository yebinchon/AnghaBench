
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct nfs_context {int dummy; } ;
struct TYPE_8__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ stream_t ;
struct TYPE_6__ {int i_len; int p_buf; } ;
struct TYPE_7__ {TYPE_1__ read; } ;
struct TYPE_9__ {int b_eof; TYPE_2__ res; struct nfs_context* p_nfs; } ;
typedef TYPE_4__ access_sys_t ;


 scalar_t__ NFS_CHECK_STATUS (TYPE_3__*,int,void*) ;
 int VLC_UNUSED (struct nfs_context*) ;
 int assert (int) ;
 int memcpy (int ,void*,int) ;

__attribute__((used)) static void
nfs_read_cb(int i_status, struct nfs_context *p_nfs, void *p_data,
            void *p_private_data)
{
    VLC_UNUSED(p_nfs);
    stream_t *p_access = p_private_data;
    access_sys_t *p_sys = p_access->p_sys;
    assert(p_sys->p_nfs == p_nfs);
    if (NFS_CHECK_STATUS(p_access, i_status, p_data))
        return;

    if (i_status == 0)
        p_sys->b_eof = 1;
    else
    {
        p_sys->res.read.i_len = i_status;
        memcpy(p_sys->res.read.p_buf, p_data, i_status);
    }
}
