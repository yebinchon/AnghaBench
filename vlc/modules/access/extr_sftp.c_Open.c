
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_25__ {int i_port; int psz_host; int * psz_path; } ;
typedef TYPE_1__ vlc_url_t ;
typedef int vlc_object_t ;
struct TYPE_26__ {char* psz_username; int * psz_password; } ;
typedef TYPE_2__ vlc_credential ;
struct libssh2_knownhost {int dummy; } ;
struct TYPE_27__ {char* psz_location; char* psz_url; int pf_control; int pf_readdir; TYPE_4__* p_sys; } ;
typedef TYPE_3__ stream_t ;
struct TYPE_28__ {int i_socket; char* psz_base_url; int file; int sftp_session; int filesize; int ssh_session; } ;
typedef TYPE_4__ access_sys_t ;
struct TYPE_29__ {int filesize; int permissions; } ;
typedef TYPE_5__ LIBSSH2_SFTP_ATTRIBUTES ;
typedef int LIBSSH2_KNOWNHOSTS ;


 int ACCESS_SET_CALLBACKS (int ,int *,int ,int ) ;
 int AuthKeyAgent (TYPE_3__*,char*) ;
 int AuthPublicKey (TYPE_3__*,char*,char*) ;
 int Close (int *) ;
 int Control ;
 int DirRead ;
 scalar_t__ EMPTY_STR (int ) ;
 int LIBSSH2_FXF_READ ;
 int LIBSSH2_KNOWNHOST_FILE_OPENSSH ;
 int LIBSSH2_KNOWNHOST_KEYENC_RAW ;
 int LIBSSH2_KNOWNHOST_KEY_ECDSA_256 ;
 int LIBSSH2_KNOWNHOST_KEY_ECDSA_384 ;
 int LIBSSH2_KNOWNHOST_KEY_ECDSA_521 ;
 int LIBSSH2_KNOWNHOST_KEY_SSHDSS ;
 int LIBSSH2_KNOWNHOST_KEY_SSHRSA ;
 int LIBSSH2_KNOWNHOST_TYPE_PLAIN ;
 int LIBSSH2_SFTP_REALPATH ;
 int LIBSSH2_SFTP_S_ISDIR (int ) ;
 int Read ;
 int SSHSessionDestroy (TYPE_3__*) ;
 int SSHSessionInit (TYPE_3__*,int ,int) ;
 int Seek ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_HOME_DIR ;
 int VLC_SUCCESS ;
 int _ (char*) ;
 int access_vaDirectoryControlHelper ;
 int asprintf (char**,char*,char*,...) ;
 char* config_GetUserDir (int ) ;
 int free (char*) ;
 int libssh2_knownhost_check (int *,int ,char const*,size_t,int,struct libssh2_knownhost**) ;
 int libssh2_knownhost_checkp (int *,int ,int,char const*,size_t,int,struct libssh2_knownhost**) ;
 int libssh2_knownhost_free (int *) ;
 int * libssh2_knownhost_init (int ) ;
 scalar_t__ libssh2_knownhost_readfile (int *,char*,int ) ;
 char* libssh2_session_hostkey (int ,size_t*,int*) ;
 int libssh2_sftp_init (int ) ;
 int libssh2_sftp_open (int ,char*,int ,int ) ;
 int libssh2_sftp_opendir (int ,char*) ;
 scalar_t__ libssh2_sftp_stat (int ,char*,TYPE_5__*) ;
 int libssh2_sftp_symlink_ex (int ,char*,int,char*,size_t const,int ) ;
 char* libssh2_userauth_list (int ,char*,size_t) ;
 scalar_t__ libssh2_userauth_password (int ,char*,int *) ;
 char* malloc (size_t const) ;
 int msg_Dbg (TYPE_3__*,char*) ;
 int msg_Err (TYPE_3__*,char*,...) ;
 int msg_Warn (TYPE_3__*,char*,...) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 size_t strlen (char*) ;
 int * strstr (char*,char*) ;
 int var_InheritInteger (TYPE_3__*,char*) ;
 int vlc_UrlClean (TYPE_1__*) ;
 scalar_t__ vlc_UrlParseFixup (TYPE_1__*,char*) ;
 int vlc_credential_clean (TYPE_2__*) ;
 scalar_t__ vlc_credential_get (TYPE_2__*,TYPE_3__*,char*,char*,int ,int ,...) ;
 int vlc_credential_init (TYPE_2__*,TYPE_1__*) ;
 int vlc_credential_store (TYPE_2__*,TYPE_3__*) ;
 TYPE_4__* vlc_obj_calloc (int *,int,int) ;
 char* vlc_path2uri (char*,char*) ;
 char* vlc_uri_decode_duplicate (int *) ;

__attribute__((used)) static int Open( vlc_object_t* p_this )
{
    stream_t* p_access = (stream_t*)p_this;
    access_sys_t* p_sys;
    vlc_credential credential;
    char* psz_path = ((void*)0);
    char *psz_session_username = ((void*)0);
    char* psz_home = ((void*)0);
    int i_port;
    vlc_url_t url;
    size_t i_len;
    int i_type;
    int i_result = VLC_EGENERIC;

    if( !p_access->psz_location )
        return VLC_EGENERIC;

    p_sys = p_access->p_sys = vlc_obj_calloc( p_this, 1, sizeof( access_sys_t ) );
    if( !p_sys ) return VLC_ENOMEM;

    p_sys->i_socket = -1;


    if( vlc_UrlParseFixup( &url, p_access->psz_url ) != 0 )
    {
        vlc_UrlClean( &url );
        return VLC_EGENERIC;
    }
    vlc_credential_init( &credential, &url );
    if( url.psz_path != ((void*)0) )
    {
        psz_path = vlc_uri_decode_duplicate( url.psz_path );
        if( psz_path == ((void*)0) )
            goto error;
    }


    if( EMPTY_STR( url.psz_host ) )
    {
        msg_Err( p_access, "Unable to extract host from %s", p_access->psz_url );
        goto error;
    }

    if( url.i_port <= 0 )
        i_port = var_InheritInteger( p_access, "sftp-port" );
    else
        i_port = url.i_port;


    if( SSHSessionInit( p_access, url.psz_host, i_port ) != VLC_SUCCESS )
        goto error;


    LIBSSH2_KNOWNHOSTS *ssh_knownhosts = libssh2_knownhost_init( p_sys->ssh_session );
    if( !ssh_knownhosts )
        goto error;

    psz_home = config_GetUserDir( VLC_HOME_DIR );
    char *psz_knownhosts_file;
    if( asprintf( &psz_knownhosts_file, "%s/.ssh/known_hosts", psz_home ) != -1 )
    {
        if( libssh2_knownhost_readfile( ssh_knownhosts, psz_knownhosts_file,
                                        LIBSSH2_KNOWNHOST_FILE_OPENSSH ) < 0 )
            msg_Err( p_access, "Failure reading known_hosts '%s'", psz_knownhosts_file );
        free( psz_knownhosts_file );
    }

    const char *fingerprint = libssh2_session_hostkey( p_sys->ssh_session, &i_len, &i_type );
    struct libssh2_knownhost *host;
    int knownhost_fingerprint_algo;

    switch( i_type )
    {
        case 132:
            knownhost_fingerprint_algo = LIBSSH2_KNOWNHOST_KEY_SSHRSA;
            break;

        case 136:
            knownhost_fingerprint_algo = LIBSSH2_KNOWNHOST_KEY_SSHDSS;
            break;
        default:
            msg_Err( p_access, "Host uses unrecognized session-key algorithm" );
            libssh2_knownhost_free( ssh_knownhosts );
            goto error;

    }
    int check = libssh2_knownhost_check( ssh_knownhosts, url.psz_host,
                                         fingerprint, i_len,
                                         LIBSSH2_KNOWNHOST_TYPE_PLAIN |
                                         LIBSSH2_KNOWNHOST_KEYENC_RAW |
                                         knownhost_fingerprint_algo,
                                         &host );


    libssh2_knownhost_free( ssh_knownhosts );


    switch(check)
    {
    case 131:
    case 128:
        msg_Dbg( p_access, "Unable to check the remote host" );
        break;
    case 130:
        msg_Dbg( p_access, "Succesfuly matched the host" );
        break;
    case 129:
        msg_Err( p_access, "The host does not match !! The remote key changed !!" );
        goto error;
    }

    vlc_credential_get( &credential, p_access, "sftp-user", "sftp-pwd",
                        ((void*)0), ((void*)0) );
    char* psz_userauthlist = ((void*)0);
    bool b_publickey_tried = 0;
    do
    {
        if (!credential.psz_username || !credential.psz_username[0])
            continue;

        if( !psz_session_username )
        {
            psz_session_username = strdup( credential.psz_username );
            psz_userauthlist =
                libssh2_userauth_list( p_sys->ssh_session, credential.psz_username,
                                       strlen( credential.psz_username ) );
        }
        else if( strcmp( psz_session_username, credential.psz_username ) != 0 )
        {
            msg_Warn( p_access, "The username changed, starting a new ssh session" );

            SSHSessionDestroy( p_access );
            if( SSHSessionInit( p_access, url.psz_host, i_port ) != VLC_SUCCESS )
                goto error;

            b_publickey_tried = 0;
            free( psz_session_username );
            psz_session_username = strdup( credential.psz_username );
            psz_userauthlist =
                libssh2_userauth_list( p_sys->ssh_session, credential.psz_username,
                                       strlen( credential.psz_username ) );
        }
        if( !psz_session_username || !psz_userauthlist )
            goto error;



        if( strstr( psz_userauthlist, "publickey" ) != ((void*)0) && !b_publickey_tried )
        {


            b_publickey_tried = 1;
            if( AuthKeyAgent( p_access, credential.psz_username ) == VLC_SUCCESS
             || AuthPublicKey( p_access, psz_home, credential.psz_username ) == VLC_SUCCESS )
                break;
        }

        if( strstr( psz_userauthlist, "password" ) != ((void*)0)
         && credential.psz_password != ((void*)0)
         && libssh2_userauth_password( p_sys->ssh_session,
                                       credential.psz_username,
                                       credential.psz_password ) == 0 )
        {
            vlc_credential_store( &credential, p_access );
            break;
        }

        msg_Warn( p_access, "sftp auth failed for %s", credential.psz_username );
    } while( vlc_credential_get( &credential, p_access, "sftp-user", "sftp-pwd",
                                _("SFTP authentication"),
                                _("Please enter a valid login and password for "
                                "the sftp connexion to %s"), url.psz_host ) );


    p_sys->sftp_session = libssh2_sftp_init( p_sys->ssh_session );

    if( !p_sys->sftp_session )
    {
        msg_Err( p_access, "Unable to initialize the SFTP session" );
        goto error;
    }


    if( !psz_path )
    {
        const size_t i_size = 1024;
        int i_read;

        char* psz_remote_home = malloc( i_size );
        if( !psz_remote_home )
            goto error;

        i_read = libssh2_sftp_symlink_ex( p_sys->sftp_session, ".", 1,
                                          psz_remote_home, i_size - 1,
                                          LIBSSH2_SFTP_REALPATH );
        if( i_read <= 0 )
        {
            msg_Err( p_access, "Impossible to get the Home directory" );
            free( psz_remote_home );
            goto error;
        }
        psz_remote_home[i_read] = '\0';
        psz_path = psz_remote_home;


        char *base = vlc_path2uri( psz_path, "sftp" );
        if( !base )
            goto error;
        if( -1 == asprintf( &p_sys->psz_base_url, "sftp://%s%s", p_access->psz_location, base + 7 ) )
        {
            free( base );
            goto error;
        }
        free( base );
    }


    LIBSSH2_SFTP_ATTRIBUTES attributes;
    if( libssh2_sftp_stat( p_sys->sftp_session, psz_path, &attributes ) )
    {
        msg_Err( p_access, "Impossible to get information about the remote path %s", psz_path );
        goto error;
    }

    if( !LIBSSH2_SFTP_S_ISDIR( attributes.permissions ))
    {

        p_sys->file = libssh2_sftp_open( p_sys->sftp_session, psz_path, LIBSSH2_FXF_READ, 0 );
        p_sys->filesize = attributes.filesize;

        ACCESS_SET_CALLBACKS( Read, ((void*)0), Control, Seek );
    }
    else
    {

        p_sys->file = libssh2_sftp_opendir( p_sys->sftp_session, psz_path );

        p_access->pf_readdir = DirRead;
        p_access->pf_control = access_vaDirectoryControlHelper;

        if( !p_sys->psz_base_url )
        {
            if( asprintf( &p_sys->psz_base_url, "sftp://%s", p_access->psz_location ) == -1 )
                goto error;


            size_t len = strlen( p_sys->psz_base_url );
            if( len > 0 && p_sys->psz_base_url[ len - 1 ] == '/' )
                p_sys->psz_base_url[ len - 1 ] = 0;
        }
    }

    if( !p_sys->file )
    {
        msg_Err( p_access, "Unable to open the remote path %s", psz_path );
        goto error;
    }

    i_result = VLC_SUCCESS;

error:
    free( psz_home );
    free( psz_session_username );
    free( psz_path );
    vlc_credential_clean( &credential );
    vlc_UrlClean( &url );
    if( i_result != VLC_SUCCESS ) {
        Close( p_this );
    }
    return i_result;
}
