
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {char* psz_username; char* psz_password; char* psz_realm; } ;
typedef TYPE_1__ vlc_credential ;
struct smb2_url {char* share; int path; int server; } ;
struct smb2_stat_64 {scalar_t__ smb2_type; int smb2_size; } ;
struct access_sys {int smb2_connected; int error_status; int smb2; int smb2_size; } ;
struct TYPE_15__ {struct access_sys* p_sys; } ;
typedef TYPE_2__ stream_t ;


 int O_RDONLY ;
 scalar_t__ SMB2_TYPE_DIRECTORY ;
 scalar_t__ SMB2_TYPE_FILE ;
 int VLC_SMB2_SET_ERROR (TYPE_2__*,char*,int) ;
 int msg_Err (TYPE_2__*,char*) ;
 int smb2_connect_share_async (int ,int ,char const*,char const*,int ,TYPE_2__*) ;
 int smb2_generic_cb ;
 int smb2_open_async (int ,int ,int ,int ,TYPE_2__*) ;
 int smb2_open_cb ;
 int smb2_opendir_async (int ,int ,int ,TYPE_2__*) ;
 int smb2_opendir_cb ;
 int smb2_set_domain (int ,char const*) ;
 int smb2_set_password (int ,char const*) ;
 int smb2_share_enum_async (int ,int ,TYPE_2__*) ;
 int smb2_share_enum_cb ;
 scalar_t__ smb2_stat_async (int ,int ,struct smb2_stat_64*,int ,TYPE_2__*) ;
 int vlc_smb2_disconnect_share (TYPE_2__*) ;
 scalar_t__ vlc_smb2_mainloop (TYPE_2__*,int) ;

__attribute__((used)) static int
vlc_smb2_open_share(stream_t *access, const struct smb2_url *smb2_url,
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

        password = ((void*)0);
    }

    smb2_set_password(sys->smb2, password);
    smb2_set_domain(sys->smb2, domain ? domain : "");

    int err = smb2_connect_share_async(sys->smb2, smb2_url->server, share,
                                       username, smb2_generic_cb, access);
    if (err < 0)
    {
        VLC_SMB2_SET_ERROR(access, "smb2_connect_share_async", err);
        goto error;
    }
    if (vlc_smb2_mainloop(access, 0) != 0)
        goto error;
    sys->smb2_connected = 1;

    int ret;
    if (do_enum)
        ret = smb2_share_enum_async(sys->smb2, smb2_share_enum_cb, access);
    else
    {
        struct smb2_stat_64 smb2_stat;
        if (smb2_stat_async(sys->smb2, smb2_url->path, &smb2_stat,
                            smb2_generic_cb, access) < 0)
            VLC_SMB2_SET_ERROR(access, "smb2_stat_async", 1);

        if (vlc_smb2_mainloop(access, 0) != 0)
            goto error;

        if (smb2_stat.smb2_type == SMB2_TYPE_FILE)
        {
            sys->smb2_size = smb2_stat.smb2_size;
            ret = smb2_open_async(sys->smb2, smb2_url->path, O_RDONLY,
                                  smb2_open_cb, access);
        }
        else if (smb2_stat.smb2_type == SMB2_TYPE_DIRECTORY)
            ret = smb2_opendir_async(sys->smb2, smb2_url->path,
                                     smb2_opendir_cb, access);
        else
        {
            msg_Err(access, "smb2_stat_cb: file type not handled");
            sys->error_status = 1;
            goto error;
        }
    }

    if (ret < 0)
    {
        VLC_SMB2_SET_ERROR(access, "smb2_open*_async", 1);
        goto error;
    }

    if (vlc_smb2_mainloop(access, 0) != 0)
        goto error;
    return 0;

error:
    vlc_smb2_disconnect_share(access);
    return -1;
}
