
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {int * p_nfsdir; int * p_nfsfh; } ;
typedef TYPE_2__ access_sys_t ;



__attribute__((used)) static bool
nfs_mount_open_slash_finished_cb(stream_t *p_access)
{
    access_sys_t *p_sys = p_access->p_sys;
    return p_sys->p_nfsfh != ((void*)0) || p_sys->p_nfsdir != ((void*)0);
}
