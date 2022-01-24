#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_18__ {void* pf_control; int /*<<< orphan*/ * pf_seek; int /*<<< orphan*/  pf_readdir; int /*<<< orphan*/  pf_read; int /*<<< orphan*/  psz_url; TYPE_4__* p_sys; } ;
typedef  TYPE_3__ stream_t ;
struct TYPE_16__ {int i_count; int /*<<< orphan*/ * ppsz_names; } ;
struct TYPE_17__ {TYPE_1__ exports; } ;
struct TYPE_20__ {scalar_t__ psz_option; } ;
struct TYPE_19__ {int b_auto_guid; TYPE_10__* p_nfs_url; int /*<<< orphan*/ * p_mount; TYPE_2__ res; int /*<<< orphan*/ * p_nfs; int /*<<< orphan*/ * p_nfsdir; int /*<<< orphan*/ * p_nfsfh; int /*<<< orphan*/ * psz_url_decoded_slash; int /*<<< orphan*/ * psz_url_decoded; TYPE_8__ encoded_url; } ;
typedef  TYPE_4__ access_sys_t ;
struct TYPE_15__ {int /*<<< orphan*/  server; int /*<<< orphan*/ * path; int /*<<< orphan*/ * file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DirRead ; 
 void* FileControl ; 
 int /*<<< orphan*/  FileRead ; 
 int /*<<< orphan*/ * FileSeek ; 
 int /*<<< orphan*/  MountRead ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 void* access_vaDirectoryControlHelper ; 
 int /*<<< orphan*/  mount_export_cb ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  mount_getexports_finished_cb ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  nfs_mount_cb ; 
 int /*<<< orphan*/  nfs_mount_open_finished_cb ; 
 int /*<<< orphan*/  nfs_mount_open_slash_finished_cb ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 scalar_t__ FUNC9 (scalar_t__,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC12 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC16 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC18(vlc_object_t *p_obj)
{
    stream_t *p_access = (stream_t *)p_obj;
    access_sys_t *p_sys = FUNC16(p_obj, 1, sizeof (*p_sys));

    if (FUNC10(p_sys == NULL))
        return VLC_ENOMEM;
    p_access->p_sys = p_sys;

    p_sys->b_auto_guid = FUNC11(p_obj, "nfs-auto-guid");

    /* nfs_* functions need a decoded url */
    p_sys->psz_url_decoded = FUNC17(p_access->psz_url);
    if (p_sys->psz_url_decoded == NULL)
        goto error;

    /* Parse the encoded URL */
    if (FUNC12(&p_sys->encoded_url, p_access->psz_url) != 0)
        goto error;
    if (p_sys->encoded_url.psz_option)
    {
        if (FUNC9(p_sys->encoded_url.psz_option, "uid")
         || FUNC9(p_sys->encoded_url.psz_option, "gid"))
            p_sys->b_auto_guid = false;
    }

    if (FUNC1(p_access, p_sys->psz_url_decoded) == -1)
        goto error;

    if (p_sys->p_nfs_url->path != NULL && p_sys->p_nfs_url->file != NULL)
    {
        /* The url has a valid path and file, mount the path and open/opendir
         * the file */
        FUNC3(p_access, "nfs_mount: server: '%s', path: '%s'",
                p_sys->p_nfs_url->server, p_sys->p_nfs_url->path);

        if (FUNC7(p_sys->p_nfs, p_sys->p_nfs_url->server,
                            p_sys->p_nfs_url->path, nfs_mount_cb, p_access) < 0)
        {
            FUNC4(p_access, "nfs_mount_async failed");
            goto error;
        }

        if (FUNC15(p_access, nfs_mount_open_finished_cb) < 0)
            goto error;

        if (p_sys->psz_url_decoded_slash != NULL)
        {
            /* Retry to mount by adding a '/' to the path, see comment in
             * nfs_mount_cb */
            FUNC6(p_sys->p_nfs_url);
            FUNC5(p_sys->p_nfs);
            p_sys->p_nfs_url = NULL;
            p_sys->p_nfs = NULL;

            if (FUNC1(p_access, p_sys->psz_url_decoded_slash) == -1
             || p_sys->p_nfs_url->path == NULL || p_sys->p_nfs_url->file == NULL)
                goto error;

            if (FUNC7(p_sys->p_nfs, p_sys->p_nfs_url->server,
                                p_sys->p_nfs_url->path, nfs_mount_cb, p_access) < 0)
            {
                FUNC4(p_access, "nfs_mount_async failed");
                goto error;
            }

            if (FUNC15(p_access, nfs_mount_open_slash_finished_cb) < 0)
                goto error;
        }

        if (p_sys->p_nfsfh != NULL)
        {
            p_access->pf_read = FileRead;
            p_access->pf_seek = FileSeek;
            p_access->pf_control = FileControl;
        }
        else if (p_sys->p_nfsdir != NULL)
        {
            p_access->pf_readdir = DirRead;
            p_access->pf_seek = NULL;
            p_access->pf_control = access_vaDirectoryControlHelper;
        }
        else
            FUNC13();
    }
    else
    {
        /* url is just a server: fetch exports point */
        FUNC5(p_sys->p_nfs);
        p_sys->p_nfs = NULL;

        p_sys->p_mount = FUNC8();
        if (p_sys->p_mount == NULL)
        {
            FUNC4(p_access, "rpc_init_context failed");
            goto error;
        }

        p_sys->res.exports.ppsz_names = NULL;
        p_sys->res.exports.i_count = -1;

        if (FUNC2(p_sys->p_mount, p_sys->p_nfs_url->server,
                                   mount_export_cb, p_access) < 0)
        {
            FUNC4(p_access, "mount_getexports_async failed");
            goto error;
        }

        if (FUNC14(p_access, mount_getexports_finished_cb) < 0)
            goto error;

        p_access->pf_readdir = MountRead;
        p_access->pf_seek = NULL;
        p_access->pf_control = access_vaDirectoryControlHelper;
    }

    return VLC_SUCCESS;

error:
    FUNC0(p_obj);
    return VLC_EGENERIC;
}