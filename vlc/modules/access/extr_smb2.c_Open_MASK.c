#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {char* psz_path; char* psz_host; int /*<<< orphan*/  i_port; } ;
typedef  TYPE_1__ vlc_url_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_23__ {char* psz_realm; scalar_t__ i_get_order; } ;
typedef  TYPE_2__ vlc_credential ;
struct smb2_url {int /*<<< orphan*/  server; int /*<<< orphan*/  share; } ;
struct access_sys {int /*<<< orphan*/  error_status; TYPE_1__ encoded_url; int /*<<< orphan*/ * smb2; int /*<<< orphan*/ * share_enum; int /*<<< orphan*/ * smb2dir; int /*<<< orphan*/ * smb2fh; } ;
struct TYPE_24__ {void* pf_control; int /*<<< orphan*/ * pf_seek; int /*<<< orphan*/  pf_readdir; int /*<<< orphan*/  pf_read; int /*<<< orphan*/  psz_url; struct access_sys* p_sys; } ;
typedef  TYPE_3__ stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  DirRead ; 
 int /*<<< orphan*/  EIO ; 
 void* FileControl ; 
 int /*<<< orphan*/  FileRead ; 
 int /*<<< orphan*/ * FileSeek ; 
 scalar_t__ GET_FROM_DIALOG ; 
 int /*<<< orphan*/  SMB2_NEGOTIATE_SIGNING_ENABLED ; 
 int /*<<< orphan*/  SMB_LOGIN_DIALOG_TEXT ; 
 int /*<<< orphan*/  SMB_LOGIN_DIALOG_TITLE ; 
 int /*<<< orphan*/  ShareEnum ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_ETIMEOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_VAR_VOID ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 void* access_vaDirectoryControlHelper ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct smb2_url*) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 struct smb2_url* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC12 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*) ; 
 scalar_t__ FUNC17 (TYPE_2__*,TYPE_3__*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC21 () ; 
 struct access_sys* FUNC22 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*) ; 
 int FUNC24 (TYPE_3__*,struct smb2_url*,TYPE_2__*) ; 
 char* FUNC25 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC26 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 

__attribute__((used)) static int
FUNC28(vlc_object_t *p_obj)
{
    stream_t *access = (stream_t *)p_obj;
    struct access_sys *sys = FUNC22(p_obj, 1, sizeof (*sys));
    struct smb2_url *smb2_url = NULL;
    char *var_domain = NULL;

    if (FUNC10(sys == NULL))
        return VLC_ENOMEM;
    access->p_sys = sys;

    /* Parse the encoded URL */
    if (FUNC14(&sys->encoded_url, access->psz_url) != 0)
        return VLC_ENOMEM;

    sys->smb2 = FUNC7();
    if (sys->smb2 == NULL)
    {
        FUNC3(access, "smb2_init_context failed");
        goto error;
    }

    FUNC9(sys->smb2, SMB2_NEGOTIATE_SIGNING_ENABLED);

    if (sys->encoded_url.psz_path == NULL)
        sys->encoded_url.psz_path = (char *) "/";

    char *resolved_host = FUNC25(access, sys->encoded_url.psz_host,
                                           sys->encoded_url.i_port);

    /* smb2_* functions need a decoded url. Re compose the url from the
     * modified sys->encoded_url (with the resolved host). */
    char *url;
    if (resolved_host != NULL)
    {
        vlc_url_t resolved_url = sys->encoded_url;
        resolved_url.psz_host = resolved_host;
        url = FUNC26(&resolved_url);
        FUNC2(resolved_host);
    }
    else
        url = FUNC26(&sys->encoded_url);
    if (!FUNC27(url))
    {
        FUNC2(url);
        goto error;
    }
    smb2_url = FUNC8(sys->smb2, url);
    FUNC2(url);

    if (!smb2_url || !smb2_url->share || !smb2_url->server)
    {
        FUNC3(access, "smb2_parse_url failed");
        goto error;
    }

    int ret = -1;
    vlc_credential credential;
    FUNC18(&credential, &sys->encoded_url);
    var_domain = FUNC12(access, "smb-domain");
    credential.psz_realm = var_domain;

    /* First, try Guest login or using "smb-" options (without
     * keystore/user interaction) */
    FUNC17(&credential, access, "smb-user", "smb-pwd", NULL,
                       NULL);
    ret = FUNC24(access, smb2_url, &credential);

    while (ret == -1
        && (!sys->error_status || FUNC0(sys->error_status))
        && FUNC17(&credential, access, "smb-user", "smb-pwd",
                              SMB_LOGIN_DIALOG_TITLE, SMB_LOGIN_DIALOG_TEXT,
                              smb2_url->server))
    {
        sys->error_status = 0;
        ret = FUNC24(access, smb2_url, &credential);
    }
    if (ret == 0)
        FUNC19(&credential, access);
    FUNC16(&credential);

    if (ret != 0)
    {
        const char *error = FUNC6(sys->smb2);
        if (error && *error)
            FUNC20(access,
                                     FUNC1("SMB2 operation failed"), "%s", error);
        if (credential.i_get_order == GET_FROM_DIALOG)
        {
            /* Tell other smb modules (likely dsm) that we already requested
             * credential to the users and that it it useless to try again.
             * This avoid to show 2 login dialogs for the same access. */
            FUNC11(access, "smb-dialog-failed", VLC_VAR_VOID);
        }
        goto error;
    }

    if (sys->smb2fh != NULL)
    {
        access->pf_read = FileRead;
        access->pf_seek = FileSeek;
        access->pf_control = FileControl;
    }
    else if (sys->smb2dir != NULL)
    {
        access->pf_readdir = DirRead;
        access->pf_seek = NULL;
        access->pf_control = access_vaDirectoryControlHelper;
    }
    else if (sys->share_enum != NULL)
    {
        access->pf_readdir = ShareEnum;
        access->pf_seek = NULL;
        access->pf_control = access_vaDirectoryControlHelper;
    }
    else
        FUNC15();

    FUNC5(smb2_url);
    FUNC2(var_domain);
    return VLC_SUCCESS;

error:
    if (smb2_url != NULL)
        FUNC5(smb2_url);
    if (sys->smb2 != NULL)
    {
        FUNC23(access);
        FUNC4(sys->smb2);
    }
    FUNC13(&sys->encoded_url);
    FUNC2(var_domain);

    /* Returning VLC_ETIMEOUT will stop the module probe and prevent to load
     * the next smb module. The smb2 module can return this specific error in
     * case of network error (EIO) or when the user asked to cancel it
     * (vlc_killed()). Indeed, in these cases, it is useless to try next smb
     * modules. */
    return FUNC21() || sys->error_status == -EIO ? VLC_ETIMEOUT
         : VLC_EGENERIC;
}