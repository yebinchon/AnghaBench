
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int vlc_object_t ;
struct TYPE_18__ {void* pf_control; int * pf_seek; int pf_readdir; int pf_read; int psz_url; TYPE_4__* p_sys; } ;
typedef TYPE_3__ stream_t ;
struct TYPE_16__ {int i_count; int * ppsz_names; } ;
struct TYPE_17__ {TYPE_1__ exports; } ;
struct TYPE_20__ {scalar_t__ psz_option; } ;
struct TYPE_19__ {int b_auto_guid; TYPE_10__* p_nfs_url; int * p_mount; TYPE_2__ res; int * p_nfs; int * p_nfsdir; int * p_nfsfh; int * psz_url_decoded_slash; int * psz_url_decoded; TYPE_8__ encoded_url; } ;
typedef TYPE_4__ access_sys_t ;
struct TYPE_15__ {int server; int * path; int * file; } ;


 int Close (int *) ;
 int DirRead ;
 void* FileControl ;
 int FileRead ;
 int * FileSeek ;
 int MountRead ;
 int NfsInit (TYPE_3__*,int *) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 void* access_vaDirectoryControlHelper ;
 int mount_export_cb ;
 scalar_t__ mount_getexports_async (int *,int ,int ,TYPE_3__*) ;
 int mount_getexports_finished_cb ;
 int msg_Dbg (TYPE_3__*,char*,int ,int *) ;
 int msg_Err (TYPE_3__*,char*) ;
 int nfs_destroy_context (int *) ;
 int nfs_destroy_url (TYPE_10__*) ;
 scalar_t__ nfs_mount_async (int *,int ,int *,int ,TYPE_3__*) ;
 int nfs_mount_cb ;
 int nfs_mount_open_finished_cb ;
 int nfs_mount_open_slash_finished_cb ;
 int * rpc_init_context () ;
 scalar_t__ strstr (scalar_t__,char*) ;
 scalar_t__ unlikely (int ) ;
 int var_InheritBool (int *,char*) ;
 scalar_t__ vlc_UrlParseFixup (TYPE_8__*,int ) ;
 int vlc_assert_unreachable () ;
 scalar_t__ vlc_mount_mainloop (TYPE_3__*,int ) ;
 scalar_t__ vlc_nfs_mainloop (TYPE_3__*,int ) ;
 TYPE_4__* vlc_obj_calloc (int *,int,int) ;
 int * vlc_uri_decode_duplicate (int ) ;

__attribute__((used)) static int
Open(vlc_object_t *p_obj)
{
    stream_t *p_access = (stream_t *)p_obj;
    access_sys_t *p_sys = vlc_obj_calloc(p_obj, 1, sizeof (*p_sys));

    if (unlikely(p_sys == ((void*)0)))
        return VLC_ENOMEM;
    p_access->p_sys = p_sys;

    p_sys->b_auto_guid = var_InheritBool(p_obj, "nfs-auto-guid");


    p_sys->psz_url_decoded = vlc_uri_decode_duplicate(p_access->psz_url);
    if (p_sys->psz_url_decoded == ((void*)0))
        goto error;


    if (vlc_UrlParseFixup(&p_sys->encoded_url, p_access->psz_url) != 0)
        goto error;
    if (p_sys->encoded_url.psz_option)
    {
        if (strstr(p_sys->encoded_url.psz_option, "uid")
         || strstr(p_sys->encoded_url.psz_option, "gid"))
            p_sys->b_auto_guid = 0;
    }

    if (NfsInit(p_access, p_sys->psz_url_decoded) == -1)
        goto error;

    if (p_sys->p_nfs_url->path != ((void*)0) && p_sys->p_nfs_url->file != ((void*)0))
    {


        msg_Dbg(p_access, "nfs_mount: server: '%s', path: '%s'",
                p_sys->p_nfs_url->server, p_sys->p_nfs_url->path);

        if (nfs_mount_async(p_sys->p_nfs, p_sys->p_nfs_url->server,
                            p_sys->p_nfs_url->path, nfs_mount_cb, p_access) < 0)
        {
            msg_Err(p_access, "nfs_mount_async failed");
            goto error;
        }

        if (vlc_nfs_mainloop(p_access, nfs_mount_open_finished_cb) < 0)
            goto error;

        if (p_sys->psz_url_decoded_slash != ((void*)0))
        {


            nfs_destroy_url(p_sys->p_nfs_url);
            nfs_destroy_context(p_sys->p_nfs);
            p_sys->p_nfs_url = ((void*)0);
            p_sys->p_nfs = ((void*)0);

            if (NfsInit(p_access, p_sys->psz_url_decoded_slash) == -1
             || p_sys->p_nfs_url->path == ((void*)0) || p_sys->p_nfs_url->file == ((void*)0))
                goto error;

            if (nfs_mount_async(p_sys->p_nfs, p_sys->p_nfs_url->server,
                                p_sys->p_nfs_url->path, nfs_mount_cb, p_access) < 0)
            {
                msg_Err(p_access, "nfs_mount_async failed");
                goto error;
            }

            if (vlc_nfs_mainloop(p_access, nfs_mount_open_slash_finished_cb) < 0)
                goto error;
        }

        if (p_sys->p_nfsfh != ((void*)0))
        {
            p_access->pf_read = FileRead;
            p_access->pf_seek = FileSeek;
            p_access->pf_control = FileControl;
        }
        else if (p_sys->p_nfsdir != ((void*)0))
        {
            p_access->pf_readdir = DirRead;
            p_access->pf_seek = ((void*)0);
            p_access->pf_control = access_vaDirectoryControlHelper;
        }
        else
            vlc_assert_unreachable();
    }
    else
    {

        nfs_destroy_context(p_sys->p_nfs);
        p_sys->p_nfs = ((void*)0);

        p_sys->p_mount = rpc_init_context();
        if (p_sys->p_mount == ((void*)0))
        {
            msg_Err(p_access, "rpc_init_context failed");
            goto error;
        }

        p_sys->res.exports.ppsz_names = ((void*)0);
        p_sys->res.exports.i_count = -1;

        if (mount_getexports_async(p_sys->p_mount, p_sys->p_nfs_url->server,
                                   mount_export_cb, p_access) < 0)
        {
            msg_Err(p_access, "mount_getexports_async failed");
            goto error;
        }

        if (vlc_mount_mainloop(p_access, mount_getexports_finished_cb) < 0)
            goto error;

        p_access->pf_readdir = MountRead;
        p_access->pf_seek = ((void*)0);
        p_access->pf_control = access_vaDirectoryControlHelper;
    }

    return VLC_SUCCESS;

error:
    Close(p_obj);
    return VLC_EGENERIC;
}
