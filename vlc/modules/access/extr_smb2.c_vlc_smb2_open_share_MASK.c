#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {char* psz_username; char* psz_password; char* psz_realm; } ;
typedef  TYPE_1__ vlc_credential ;
struct smb2_url {char* share; int /*<<< orphan*/  path; int /*<<< orphan*/  server; } ;
struct smb2_stat_64 {scalar_t__ smb2_type; int /*<<< orphan*/  smb2_size; } ;
struct access_sys {int smb2_connected; int error_status; int /*<<< orphan*/  smb2; int /*<<< orphan*/  smb2_size; } ;
struct TYPE_15__ {struct access_sys* p_sys; } ;
typedef  TYPE_2__ stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
 scalar_t__ SMB2_TYPE_DIRECTORY ; 
 scalar_t__ SMB2_TYPE_FILE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  smb2_generic_cb ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  smb2_open_cb ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  smb2_opendir_cb ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  smb2_share_enum_cb ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smb2_stat_64*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*,int) ; 

__attribute__((used)) static int
FUNC11(stream_t *access, const struct smb2_url *smb2_url,
                    const vlc_credential *credential)
{
    struct access_sys *sys = access->p_sys;

    const bool do_enum = smb2_url->share[0] == '\0';
    const char *username = credential->psz_username;
    const char *password = credential->psz_password;
    const char *domain = credential->psz_realm;
    const char *share = do_enum ? "IPC$" : smb2_url->share;

    if (!username)
    {
        username = "Guest";
        /* A NULL password enable ntlmssp anonymous login */
        password = NULL;
    }

    FUNC6(sys->smb2, password);
    FUNC5(sys->smb2, domain ? domain : "");

    int err = FUNC2(sys->smb2, smb2_url->server, share,
                                       username, smb2_generic_cb, access);
    if (err < 0)
    {
        FUNC0(access, "smb2_connect_share_async", err);
        goto error;
    }
    if (FUNC10(access, false) != 0)
        goto error;
    sys->smb2_connected = true;

    int ret;
    if (do_enum)
        ret = FUNC7(sys->smb2, smb2_share_enum_cb, access);
    else
    {
        struct smb2_stat_64 smb2_stat;
        if (FUNC8(sys->smb2, smb2_url->path, &smb2_stat,
                            smb2_generic_cb, access) < 0)
            FUNC0(access, "smb2_stat_async", 1);

        if (FUNC10(access, false) != 0)
            goto error;

        if (smb2_stat.smb2_type == SMB2_TYPE_FILE)
        {
            sys->smb2_size = smb2_stat.smb2_size;
            ret = FUNC3(sys->smb2, smb2_url->path, O_RDONLY,
                                  smb2_open_cb, access);
        }
        else if (smb2_stat.smb2_type == SMB2_TYPE_DIRECTORY)
            ret = FUNC4(sys->smb2, smb2_url->path,
                                     smb2_opendir_cb, access);
        else
        {
            FUNC1(access, "smb2_stat_cb: file type not handled");
            sys->error_status = 1;
            goto error;
        }
    }

    if (ret < 0)
    {
        FUNC0(access, "smb2_open*_async", 1);
        goto error;
    }

    if (FUNC10(access, false) != 0)
        goto error;
    return 0;

error:
    FUNC9(access);
    return -1;
}