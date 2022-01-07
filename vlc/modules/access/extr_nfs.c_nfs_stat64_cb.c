
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct nfs_stat_64 {int nfs_mode; int nfs_gid; int nfs_uid; } ;
struct nfs_context {int dummy; } ;
struct TYPE_10__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_11__ {int b_error; TYPE_1__* p_nfs_url; struct nfs_context* p_nfs; struct nfs_stat_64 stat; scalar_t__ b_auto_guid; } ;
typedef TYPE_3__ access_sys_t ;
struct TYPE_9__ {int file; } ;


 scalar_t__ NFS_CHECK_STATUS (TYPE_2__*,int,void*) ;
 int O_RDONLY ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int VLC_UNUSED (struct nfs_context*) ;
 int assert (int) ;
 int msg_Dbg (TYPE_2__*,char*,int ) ;
 int msg_Err (TYPE_2__*,char*) ;
 scalar_t__ nfs_open_async (struct nfs_context*,int ,int ,int ,TYPE_2__*) ;
 int nfs_open_cb ;
 scalar_t__ nfs_opendir_async (struct nfs_context*,int ,int ,TYPE_2__*) ;
 int nfs_opendir_cb ;
 int nfs_set_gid (struct nfs_context*,int ) ;
 int nfs_set_uid (struct nfs_context*,int ) ;

__attribute__((used)) static void
nfs_stat64_cb(int i_status, struct nfs_context *p_nfs, void *p_data,
              void *p_private_data)
{
    VLC_UNUSED(p_nfs);
    stream_t *p_access = p_private_data;
    access_sys_t *p_sys = p_access->p_sys;
    assert(p_sys->p_nfs == p_nfs);
    if (NFS_CHECK_STATUS(p_access, i_status, p_data))
        return;

    struct nfs_stat_64 *p_stat = p_data;
    p_sys->stat = *p_stat;

    if (p_sys->b_auto_guid)
    {
        nfs_set_uid(p_sys->p_nfs, p_sys->stat.nfs_uid);
        nfs_set_gid(p_sys->p_nfs, p_sys->stat.nfs_gid);
    }

    if (S_ISDIR(p_sys->stat.nfs_mode))
    {
        msg_Dbg(p_access, "nfs_opendir: '%s'", p_sys->p_nfs_url->file);
        if (nfs_opendir_async(p_sys->p_nfs, p_sys->p_nfs_url->file,
                              nfs_opendir_cb, p_access) != 0)
        {
            msg_Err(p_access, "nfs_opendir_async failed");
            p_sys->b_error = 1;
        }
    }
    else if (S_ISREG(p_sys->stat.nfs_mode))
    {
        msg_Dbg(p_access, "nfs_open: '%s'", p_sys->p_nfs_url->file);
        if (nfs_open_async(p_sys->p_nfs, p_sys->p_nfs_url->file, O_RDONLY,
                           nfs_open_cb, p_access) < 0)
        {
            msg_Err(p_access, "nfs_open_async failed");
            p_sys->b_error = 1;
        }
    }
    else
    {
        msg_Err(p_access, "nfs_stat64_cb: file type not handled");
        p_sys->b_error = 1;
    }
}
