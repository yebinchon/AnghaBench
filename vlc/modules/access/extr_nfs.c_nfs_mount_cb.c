
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {char* psz_path; } ;
typedef TYPE_2__ vlc_url_t ;
struct nfs_context {int dummy; } ;
struct TYPE_14__ {int psz_url; TYPE_4__* p_sys; } ;
typedef TYPE_3__ stream_t ;
struct TYPE_15__ {int b_error; TYPE_1__* p_nfs_url; struct nfs_context* p_nfs; int * psz_url_decoded_slash; } ;
typedef TYPE_4__ access_sys_t ;
struct TYPE_12__ {int file; } ;


 int EACCES ;
 scalar_t__ NFS_CHECK_STATUS (TYPE_3__*,int,void*) ;
 int * NfsGetUrl (TYPE_2__*,char*) ;
 int VLC_UNUSED (struct nfs_context*) ;
 int assert (int) ;
 int msg_Err (TYPE_3__*,char*) ;
 int msg_Warn (TYPE_3__*,char*,int ) ;
 scalar_t__ nfs_stat64_async (struct nfs_context*,int ,int ,TYPE_3__*) ;
 int nfs_stat64_cb ;
 int strlen (char*) ;
 int vlc_UrlClean (TYPE_2__*) ;
 int vlc_UrlParseFixup (TYPE_2__*,int ) ;

__attribute__((used)) static void
nfs_mount_cb(int i_status, struct nfs_context *p_nfs, void *p_data,
             void *p_private_data)
{
    VLC_UNUSED(p_nfs);
    stream_t *p_access = p_private_data;
    access_sys_t *p_sys = p_access->p_sys;
    assert(p_sys->p_nfs == p_nfs);
    (void) p_data;






    if (i_status == -EACCES && p_sys->psz_url_decoded_slash == ((void*)0))
    {
        vlc_url_t url;
        vlc_UrlParseFixup(&url, p_access->psz_url);
        if (url.psz_path == ((void*)0) || url.psz_path[0] == '\0'
         || url.psz_path[strlen(url.psz_path) - 1] == '/'
         || (p_sys->psz_url_decoded_slash = NfsGetUrl(&url, "/")) == ((void*)0))
        {
            vlc_UrlClean(&url);
            NFS_CHECK_STATUS(p_access, i_status, p_data);
            return;
        }
        else
        {
            vlc_UrlClean(&url);
            msg_Warn(p_access, "trying to mount '%s' again by adding a '/'",
                     p_access->psz_url);
            return;
        }
    }

    if (NFS_CHECK_STATUS(p_access, i_status, p_data))
        return;

    if (nfs_stat64_async(p_sys->p_nfs, p_sys->p_nfs_url->file, nfs_stat64_cb,
                         p_access) < 0)
    {
        msg_Err(p_access, "nfs_stat64_async failed");
        p_sys->b_error = 1;
    }
}
