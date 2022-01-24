#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  psz_host; int /*<<< orphan*/ * psz_path; } ;
typedef  TYPE_1__ vlc_url_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_17__ {char* psz_realm; int /*<<< orphan*/  psz_password; int /*<<< orphan*/  psz_username; } ;
typedef  TYPE_2__ vlc_credential ;
typedef  scalar_t__ uint64_t ;
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
struct TYPE_18__ {int /*<<< orphan*/  psz_location; int /*<<< orphan*/  pf_seek; int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_read; int /*<<< orphan*/  pf_readdir; TYPE_4__* p_sys; int /*<<< orphan*/  psz_url; } ;
typedef  TYPE_3__ stream_t ;
struct TYPE_19__ {int i_smb; scalar_t__ size; TYPE_1__ url; } ;
typedef  TYPE_4__ access_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  DirRead ; 
 scalar_t__ EACCES ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  Read ; 
 int /*<<< orphan*/  SMB_LOGIN_DIALOG_TEXT ; 
 int /*<<< orphan*/  SMB_LOGIN_DIALOG_TITLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Seek ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  access_vaDirectoryControlHelper ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smb_auth ; 
 char* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char*,struct stat*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 char* FUNC9 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,TYPE_3__*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,TYPE_3__*) ; 
 TYPE_4__* FUNC16 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 char* FUNC18 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(vlc_object_t *obj)
{
    stream_t *access = (stream_t *)obj;
    vlc_url_t url;
    vlc_credential credential;
    char *psz_decoded_path = NULL, *uri, *psz_var_domain = NULL;
    int fd;
    uint64_t size;
    bool is_dir;

    if (FUNC4(smb_auth, 0))
        return VLC_EGENERIC;

    if (FUNC11(&url, access->psz_url) != 0)
    {
        FUNC10(&url);
        return VLC_EGENERIC;
    }

    if (url.psz_path != NULL)
    {
        psz_decoded_path = FUNC18(url.psz_path);
        if (psz_decoded_path == NULL)
        {
            FUNC10(&url);
            return VLC_EGENERIC;
        }
    }

    FUNC14(&credential, &url);
    psz_var_domain = FUNC9(access, "smb-domain");
    credential.psz_realm = psz_var_domain;
    FUNC13(&credential, access, "smb-user", "smb-pwd", NULL, NULL);

    for (;;)
    {
        struct stat st;

        uri = FUNC3(credential.psz_realm, credential.psz_username,
                          credential.psz_password, url.psz_host,
                          psz_decoded_path, NULL);
        if (uri == NULL)
        {
            FUNC12(&credential);
            FUNC1(psz_var_domain);
            FUNC1(psz_decoded_path);
            FUNC10(&url);
            return VLC_ENOMEM;
        }

        if (FUNC7(uri, &st) == 0)
        {
            is_dir = FUNC0(st.st_mode) != 0;
            size = st.st_size;
            break;
        }

        /* smbc_stat() fails with servers or shares. Assume directory. */
        is_dir = true;
        size = 0;

        if (errno != EACCES)
            break;

        errno = 0;
        if (!FUNC13(&credential, access, "smb-user",
                                "smb-pwd", SMB_LOGIN_DIALOG_TITLE,
                                SMB_LOGIN_DIALOG_TEXT, url.psz_host))
            break;
    }

    FUNC15(&credential, access);
    FUNC12(&credential);
    FUNC1(psz_var_domain);
    FUNC1(psz_decoded_path);

    /* Init access */
    access_sys_t *sys = FUNC16(obj, 1, sizeof (*sys));
    if (FUNC8(sys == NULL))
    {
        FUNC1(uri);
        FUNC10(&url);
        return VLC_ENOMEM;
    }

    access->p_sys = sys;

    if (is_dir)
    {
        sys->url = url;
        access->pf_readdir = DirRead;
        access->pf_control = access_vaDirectoryControlHelper;
        fd = FUNC6(uri);
        if (fd < 0)
            FUNC10(&sys->url);
    }
    else
    {
        access->pf_read = Read;
        access->pf_control = Control;
        access->pf_seek = Seek;
        fd = FUNC5(uri, O_RDONLY, 0);
        FUNC10(&url);
    }
    FUNC1(uri);

    if (fd < 0)
    {
        FUNC2(obj, "cannot open %s: %s",
                access->psz_location, FUNC17(errno));
        return VLC_EGENERIC;
    }

    sys->size = size;
    sys->i_smb = fd;

    return VLC_SUCCESS;
}