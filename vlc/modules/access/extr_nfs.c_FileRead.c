
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ stream_t ;
typedef int ssize_t ;
struct TYPE_10__ {int i_len; void* p_buf; } ;
struct TYPE_9__ {TYPE_2__ read; } ;
struct TYPE_12__ {TYPE_1__ res; int p_nfsfh; int p_nfs; scalar_t__ b_eof; } ;
typedef TYPE_4__ access_sys_t ;


 int msg_Err (TYPE_3__*,char*) ;
 scalar_t__ nfs_read_async (int ,int ,size_t,int ,TYPE_3__*) ;
 int nfs_read_cb ;
 int nfs_read_finished_cb ;
 scalar_t__ vlc_nfs_mainloop (TYPE_3__*,int ) ;

__attribute__((used)) static ssize_t
FileRead(stream_t *p_access, void *p_buf, size_t i_len)
{
    access_sys_t *p_sys = p_access->p_sys;

    if (p_sys->b_eof)
        return 0;

    p_sys->res.read.i_len = 0;
    p_sys->res.read.p_buf = p_buf;
    if (nfs_read_async(p_sys->p_nfs, p_sys->p_nfsfh, i_len, nfs_read_cb,
                       p_access) < 0)
    {
        msg_Err(p_access, "nfs_read_async failed");
        return -1;
    }

    if (vlc_nfs_mainloop(p_access, nfs_read_finished_cb) < 0)
        return -1;

    return p_sys->res.read.i_len;
}
