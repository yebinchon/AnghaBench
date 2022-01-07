
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int psz_host; int * psz_path; } ;
typedef TYPE_1__ vlc_url_t ;
typedef int vlc_object_t ;
struct TYPE_18__ {char* psz_realm; int psz_password; int psz_username; } ;
typedef TYPE_2__ vlc_credential ;
typedef scalar_t__ uint64_t ;
struct stat {scalar_t__ st_size; int st_mode; } ;
struct TYPE_19__ {int pf_seek; int pf_control; int pf_read; int pf_readdir; TYPE_4__* p_sys; int psz_url; } ;
typedef TYPE_3__ stream_t ;
struct TYPE_20__ {int i_smb; scalar_t__ size; TYPE_1__ url; } ;
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
 int open (char*,int ,int ) ;
 int smb_get_uri (TYPE_3__*,char**,int ,int ,int ,char*,int *) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ unlikely (int ) ;
 char* var_InheritString (TYPE_3__*,char*) ;
 int vlc_UrlClean (TYPE_1__*) ;
 scalar_t__ vlc_UrlParseFixup (TYPE_1__*,int ) ;
 int vlc_credential_clean (TYPE_2__*) ;
 int vlc_credential_get (TYPE_2__*,TYPE_3__*,char*,char*,int ,int ,...) ;
 int vlc_credential_init (TYPE_2__*,TYPE_1__*) ;
 int vlc_credential_store (TYPE_2__*,TYPE_3__*) ;
 TYPE_4__* vlc_obj_calloc (int *,int,int) ;
 char* vlc_uri_decode_duplicate (int *) ;

__attribute__((used)) static int Open(vlc_object_t *obj)
{
    stream_t *access = (stream_t *)obj;
    vlc_url_t url;
    vlc_credential credential;
    char *psz_decoded_path = ((void*)0), *psz_uri = ((void*)0), *psz_var_domain = ((void*)0);
    int fd;
    uint64_t size;
    bool is_dir;

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

        if (smb_get_uri(access, &psz_uri,
                        credential.psz_username, credential.psz_password,
                        url.psz_host, psz_decoded_path, ((void*)0) ) == -1 )
        {
            vlc_credential_clean(&credential);
            free(psz_var_domain);
            free(psz_decoded_path);
            vlc_UrlClean(&url);
            return VLC_ENOMEM;
        }

        if (stat(psz_uri, &st) == 0)
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
        free(psz_uri);
        vlc_UrlClean(&url);
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
        fd = open(psz_uri, O_RDONLY, 0);
        vlc_UrlClean(&url);
    }
    free(psz_uri);

    sys->size = size;
    sys->i_smb = fd;

    return VLC_SUCCESS;
}
