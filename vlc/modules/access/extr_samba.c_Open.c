
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int psz_host; int * psz_path; } ;
typedef TYPE_1__ vlc_url_t ;
typedef int vlc_object_t ;
struct TYPE_17__ {char* psz_realm; int psz_password; int psz_username; } ;
typedef TYPE_2__ vlc_credential ;
typedef scalar_t__ uint64_t ;
struct stat {scalar_t__ st_size; int st_mode; } ;
struct TYPE_18__ {int psz_location; int pf_seek; int pf_control; int pf_read; int pf_readdir; TYPE_4__* p_sys; int psz_url; } ;
typedef TYPE_3__ stream_t ;
struct TYPE_19__ {int i_smb; scalar_t__ size; TYPE_1__ url; } ;
typedef TYPE_4__ access_sys_t ;


 int Control ;
 int DirRead ;
 scalar_t__ EACCES ;
 int O_RDONLY ;
 int Read ;
 int SMB_LOGIN_DIALOG_TEXT ;
 int SMB_LOGIN_DIALOG_TITLE ;
 scalar_t__ S_ISDIR (int ) ;
 int Seek ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int access_vaDirectoryControlHelper ;
 scalar_t__ errno ;
 int free (char*) ;
 int msg_Err (int *,char*,int ,int ) ;
 int smb_auth ;
 char* smb_get_uri (char*,int ,int ,int ,char*,int *) ;
 scalar_t__ smbc_init (int ,int ) ;
 int smbc_open (char*,int ,int ) ;
 int smbc_opendir (char*) ;
 scalar_t__ smbc_stat (char*,struct stat*) ;
 scalar_t__ unlikely (int ) ;
 char* var_InheritString (TYPE_3__*,char*) ;
 int vlc_UrlClean (TYPE_1__*) ;
 scalar_t__ vlc_UrlParseFixup (TYPE_1__*,int ) ;
 int vlc_credential_clean (TYPE_2__*) ;
 int vlc_credential_get (TYPE_2__*,TYPE_3__*,char*,char*,int ,int ,...) ;
 int vlc_credential_init (TYPE_2__*,TYPE_1__*) ;
 int vlc_credential_store (TYPE_2__*,TYPE_3__*) ;
 TYPE_4__* vlc_obj_calloc (int *,int,int) ;
 int vlc_strerror_c (scalar_t__) ;
 char* vlc_uri_decode_duplicate (int *) ;

__attribute__((used)) static int Open(vlc_object_t *obj)
{
    stream_t *access = (stream_t *)obj;
    vlc_url_t url;
    vlc_credential credential;
    char *psz_decoded_path = ((void*)0), *uri, *psz_var_domain = ((void*)0);
    int fd;
    uint64_t size;
    bool is_dir;

    if (smbc_init(smb_auth, 0))
        return VLC_EGENERIC;

    if (vlc_UrlParseFixup(&url, access->psz_url) != 0)
    {
        vlc_UrlClean(&url);
        return VLC_EGENERIC;
    }

    if (url.psz_path != ((void*)0))
    {
        psz_decoded_path = vlc_uri_decode_duplicate(url.psz_path);
        if (psz_decoded_path == ((void*)0))
        {
            vlc_UrlClean(&url);
            return VLC_EGENERIC;
        }
    }

    vlc_credential_init(&credential, &url);
    psz_var_domain = var_InheritString(access, "smb-domain");
    credential.psz_realm = psz_var_domain;
    vlc_credential_get(&credential, access, "smb-user", "smb-pwd", ((void*)0), ((void*)0));

    for (;;)
    {
        struct stat st;

        uri = smb_get_uri(credential.psz_realm, credential.psz_username,
                          credential.psz_password, url.psz_host,
                          psz_decoded_path, ((void*)0));
        if (uri == ((void*)0))
        {
            vlc_credential_clean(&credential);
            free(psz_var_domain);
            free(psz_decoded_path);
            vlc_UrlClean(&url);
            return VLC_ENOMEM;
        }

        if (smbc_stat(uri, &st) == 0)
        {
            is_dir = S_ISDIR(st.st_mode) != 0;
            size = st.st_size;
            break;
        }


        is_dir = 1;
        size = 0;

        if (errno != EACCES)
            break;

        errno = 0;
        if (!vlc_credential_get(&credential, access, "smb-user",
                                "smb-pwd", SMB_LOGIN_DIALOG_TITLE,
                                SMB_LOGIN_DIALOG_TEXT, url.psz_host))
            break;
    }

    vlc_credential_store(&credential, access);
    vlc_credential_clean(&credential);
    free(psz_var_domain);
    free(psz_decoded_path);


    access_sys_t *sys = vlc_obj_calloc(obj, 1, sizeof (*sys));
    if (unlikely(sys == ((void*)0)))
    {
        free(uri);
        vlc_UrlClean(&url);
        return VLC_ENOMEM;
    }

    access->p_sys = sys;

    if (is_dir)
    {
        sys->url = url;
        access->pf_readdir = DirRead;
        access->pf_control = access_vaDirectoryControlHelper;
        fd = smbc_opendir(uri);
        if (fd < 0)
            vlc_UrlClean(&sys->url);
    }
    else
    {
        access->pf_read = Read;
        access->pf_control = Control;
        access->pf_seek = Seek;
        fd = smbc_open(uri, O_RDONLY, 0);
        vlc_UrlClean(&url);
    }
    free(uri);

    if (fd < 0)
    {
        msg_Err(obj, "cannot open %s: %s",
                access->psz_location, vlc_strerror_c(errno));
        return VLC_EGENERIC;
    }

    sys->size = size;
    sys->i_smb = fd;

    return VLC_SUCCESS;
}
