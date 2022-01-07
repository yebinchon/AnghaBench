
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_7__ {int * p_nfs; TYPE_3__* p_nfs_url; } ;
typedef TYPE_2__ access_sys_t ;
struct TYPE_8__ {int * server; } ;


 int msg_Err (TYPE_1__*,char*,...) ;
 int nfs_get_error (int *) ;
 int * nfs_init_context () ;
 TYPE_3__* nfs_parse_url_incomplete (int *,char const*) ;

__attribute__((used)) static int
NfsInit(stream_t *p_access, const char *psz_url_decoded)
{
    access_sys_t *p_sys = p_access->p_sys;
    p_sys->p_nfs = nfs_init_context();
    if (p_sys->p_nfs == ((void*)0))
    {
        msg_Err(p_access, "nfs_init_context failed");
        return -1;
    }

    p_sys->p_nfs_url = nfs_parse_url_incomplete(p_sys->p_nfs, psz_url_decoded);
    if (p_sys->p_nfs_url == ((void*)0) || p_sys->p_nfs_url->server == ((void*)0))
    {
        msg_Err(p_access, "nfs_parse_url_incomplete failed: '%s'",
                nfs_get_error(p_sys->p_nfs));
        return -1;
    }
    return 0;
}
