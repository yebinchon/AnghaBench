
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ stream_t ;
struct TYPE_5__ {int p_session; int i_fd; int psz_path; int i_tid; int psz_share; } ;
typedef TYPE_2__ access_sys_t ;


 int DSM_ERROR_NT ;
 int DSM_SUCCESS ;
 int EACCES ;
 int ENOENT ;
 scalar_t__ NT_STATUS_ACCESS_DENIED ;
 int SMB_MOD_RO ;
 int smb_fopen (int ,int ,int ,int ,int *) ;
 scalar_t__ smb_session_get_nt_status (int ) ;
 int smb_session_login (int ) ;
 int smb_session_set_creds (int ,char const*,char const*,char const*) ;
 int smb_tree_connect (int ,int ,int *) ;

__attribute__((used)) static int smb_connect( stream_t *p_access, const char *psz_login,
                        const char *psz_password, const char *psz_domain)
{
    access_sys_t *p_sys = p_access->p_sys;
    int ret;

    smb_session_set_creds( p_sys->p_session, psz_domain,
                           psz_login, psz_password );
    if( smb_session_login( p_sys->p_session ) != DSM_SUCCESS )
        return EACCES;

    if( !p_sys->psz_share )
        return 0;


    ret = smb_tree_connect( p_sys->p_session, p_sys->psz_share, &p_sys->i_tid );
    if( ret != DSM_SUCCESS )
        goto error;


    ret = smb_fopen( p_sys->p_session, p_sys->i_tid, p_sys->psz_path,
                     SMB_MOD_RO, &p_sys->i_fd );
    if( ret != DSM_SUCCESS )
        goto error;

    return 0;

error:
    return ret == DSM_ERROR_NT && smb_session_get_nt_status( p_sys->p_session )
        == NT_STATUS_ACCESS_DENIED ? EACCES : ENOENT;
}
