
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_9__ {int * p_nfs; } ;
typedef TYPE_3__ access_sys_t ;


 int assert (int ) ;
 int nfs_get_rpc_context (int *) ;
 int vlc_rpc_mainloop (TYPE_1__*,int ,int (*) (TYPE_1__*)) ;

__attribute__((used)) static int
vlc_nfs_mainloop(stream_t *p_access, bool (*pf_until_cb)(stream_t *))
{
    access_sys_t *p_sys = p_access->p_sys;
    assert(p_sys->p_nfs != ((void*)0));
    return vlc_rpc_mainloop(p_access, nfs_get_rpc_context(p_sys->p_nfs),
                            pf_until_cb);
}
