#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  psz_host; int /*<<< orphan*/ * psz_path; } ;
typedef  TYPE_1__ vlc_url_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_18__ {char* psz_realm; int /*<<< orphan*/  psz_password; int /*<<< orphan*/  psz_username; } ;
typedef  TYPE_2__ vlc_credential ;
typedef  scalar_t__ uint64_t ;
struct stat {scalar_t__ st_size; int /*<<< orphan*/  st_mode; } ;
struct TYPE_19__ {int /*<<< orphan*/  pf_seek; int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_read; int /*<<< orphan*/  pf_readdir; TYPE_4__* p_sys; int /*<<< orphan*/  psz_url; } ;
typedef  TYPE_3__ stream_t ;
struct TYPE_20__ {int i_smb; scalar_t__ size; TYPE_1__ url; } ;
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
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_3__*,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,struct stat*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 char* FUNC6 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_3__*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,TYPE_3__*) ; 
 TYPE_4__* FUNC13 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(vlc_object_t *obj)
{
    stream_t *access = (stream_t *)obj;
    vlc_url_t url;
    vlc_credential credential;
    char *psz_decoded_path = NULL, *psz_uri = NULL, *psz_var_domain = NULL;
    int fd;
    uint64_t size;
    bool is_dir;

    if (FUNC8(&url, access->psz_url) != 0)
    {
        FUNC7(&url);
        return VLC_EGENERIC;
    }

    if (url.psz_path != NULL)
    {
        psz_decoded_path = FUNC14(url.psz_path);
        if (psz_decoded_path == NULL)
        {
            FUNC7(&url);
            return VLC_EGENERIC;
        }
    }

    FUNC11(&credential, &url);
    psz_var_domain = FUNC6(access, "smb-domain");
    credential.psz_realm = psz_var_domain;
    FUNC10(&credential, access, "smb-user", "smb-pwd", NULL, NULL);

    for (;;)
    {
        struct stat st;

        if (FUNC3(access, &psz_uri,
                        credential.psz_username, credential.psz_password,
                        url.psz_host, psz_decoded_path, NULL ) == -1 )
        {
            FUNC9(&credential);
            FUNC1(psz_var_domain);
            FUNC1(psz_decoded_path);
            FUNC7(&url);
            return VLC_ENOMEM;
        }

        if (FUNC4(psz_uri, &st) == 0)
        {
            is_dir = FUNC0(st.st_mode) != 0;
            size = st.st_size;
            break;
        }

        /* stat() fails with servers or shares. Assume directory. */
        is_dir = true;
        size = 0;

        if (errno != EACCES)
            break;

        errno = 0;
        if (!FUNC10(&credential, access, "smb-user",
                                "smb-pwd", SMB_LOGIN_DIALOG_TITLE,
                                SMB_LOGIN_DIALOG_TEXT, url.psz_host))
            break;
    }

    FUNC12(&credential, access);
    FUNC9(&credential);
    FUNC1(psz_var_domain);
    FUNC1(psz_decoded_path);

    /* Init access */
    access_sys_t *sys = FUNC13(obj, 1, sizeof (*sys));
    if (FUNC5(sys == NULL))
    {
        FUNC1(psz_uri);
        FUNC7(&url);
        return VLC_ENOMEM;
    }

    access->p_sys = sys;

    if (is_dir)
    {
        sys->url = url;
        access->pf_readdir = DirRead;
        access->pf_control = access_vaDirectoryControlHelper;
        fd = -1;
    }
    else
    {
        access->pf_read = Read;
        access->pf_control = Control;
        access->pf_seek = Seek;
        fd = FUNC2(psz_uri, O_RDONLY, 0);
        FUNC7(&url);
    }
    FUNC1(psz_uri);

    sys->size = size;
    sys->i_smb = fd;

    return VLC_SUCCESS;
}