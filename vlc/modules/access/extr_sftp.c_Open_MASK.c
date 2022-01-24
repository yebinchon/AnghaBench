#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int i_port; int /*<<< orphan*/  psz_host; int /*<<< orphan*/ * psz_path; } ;
typedef  TYPE_1__ vlc_url_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_26__ {char* psz_username; int /*<<< orphan*/ * psz_password; } ;
typedef  TYPE_2__ vlc_credential ;
struct libssh2_knownhost {int dummy; } ;
struct TYPE_27__ {char* psz_location; char* psz_url; int /*<<< orphan*/  pf_control; int /*<<< orphan*/  pf_readdir; TYPE_4__* p_sys; } ;
typedef  TYPE_3__ stream_t ;
struct TYPE_28__ {int i_socket; char* psz_base_url; int /*<<< orphan*/  file; int /*<<< orphan*/  sftp_session; int /*<<< orphan*/  filesize; int /*<<< orphan*/  ssh_session; } ;
typedef  TYPE_4__ access_sys_t ;
struct TYPE_29__ {int /*<<< orphan*/  filesize; int /*<<< orphan*/  permissions; } ;
typedef  TYPE_5__ LIBSSH2_SFTP_ATTRIBUTES ;
typedef  int /*<<< orphan*/  LIBSSH2_KNOWNHOSTS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*,char*) ; 
 int FUNC2 (TYPE_3__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  Control ; 
 int /*<<< orphan*/  DirRead ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LIBSSH2_FXF_READ ; 
#define  LIBSSH2_HOSTKEY_TYPE_DSS 136 
#define  LIBSSH2_HOSTKEY_TYPE_ECDSA_256 135 
#define  LIBSSH2_HOSTKEY_TYPE_ECDSA_384 134 
#define  LIBSSH2_HOSTKEY_TYPE_ECDSA_521 133 
#define  LIBSSH2_HOSTKEY_TYPE_RSA 132 
#define  LIBSSH2_KNOWNHOST_CHECK_FAILURE 131 
#define  LIBSSH2_KNOWNHOST_CHECK_MATCH 130 
#define  LIBSSH2_KNOWNHOST_CHECK_MISMATCH 129 
#define  LIBSSH2_KNOWNHOST_CHECK_NOTFOUND 128 
 int /*<<< orphan*/  LIBSSH2_KNOWNHOST_FILE_OPENSSH ; 
 int LIBSSH2_KNOWNHOST_KEYENC_RAW ; 
 int LIBSSH2_KNOWNHOST_KEY_ECDSA_256 ; 
 int LIBSSH2_KNOWNHOST_KEY_ECDSA_384 ; 
 int LIBSSH2_KNOWNHOST_KEY_ECDSA_521 ; 
 int LIBSSH2_KNOWNHOST_KEY_SSHDSS ; 
 int LIBSSH2_KNOWNHOST_KEY_SSHRSA ; 
 int LIBSSH2_KNOWNHOST_TYPE_PLAIN ; 
 int /*<<< orphan*/  LIBSSH2_SFTP_REALPATH ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Read ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  Seek ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  VLC_HOME_DIR ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  access_vaDirectoryControlHelper ; 
 int FUNC9 (char**,char*,char*,...) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,size_t,int,struct libssh2_knownhost**) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char const*,size_t,int,struct libssh2_knownhost**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC17 (int /*<<< orphan*/ ,size_t*,int*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,char*,TYPE_5__*) ; 
 int FUNC22 (int /*<<< orphan*/ ,char*,int,char*,size_t const,int /*<<< orphan*/ ) ; 
 char* FUNC23 (int /*<<< orphan*/ ,char*,size_t) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 char* FUNC25 (size_t const) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_3__*,char*,...) ; 
 scalar_t__ FUNC29 (char*,char*) ; 
 char* FUNC30 (char*) ; 
 size_t FUNC31 (char*) ; 
 int /*<<< orphan*/ * FUNC32 (char*,char*) ; 
 int FUNC33 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_1__*) ; 
 scalar_t__ FUNC35 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_2__*) ; 
 scalar_t__ FUNC37 (TYPE_2__*,TYPE_3__*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC39 (TYPE_2__*,TYPE_3__*) ; 
 TYPE_4__* FUNC40 (int /*<<< orphan*/ *,int,int) ; 
 char* FUNC41 (char*,char*) ; 
 char* FUNC42 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC43( vlc_object_t* p_this )
{
    stream_t*   p_access = (stream_t*)p_this;
    access_sys_t* p_sys;
    vlc_credential credential;
    char* psz_path = NULL;
    char *psz_session_username = NULL;
    char* psz_home = NULL;
    int i_port;
    vlc_url_t url;
    size_t i_len;
    int i_type;
    int i_result = VLC_EGENERIC;

    if( !p_access->psz_location )
        return VLC_EGENERIC;

    p_sys = p_access->p_sys = FUNC40( p_this, 1, sizeof( access_sys_t ) );
    if( !p_sys ) return VLC_ENOMEM;

    p_sys->i_socket = -1;

    /* Parse the URL */
    if( FUNC35( &url, p_access->psz_url ) != 0 )
    {
        FUNC34( &url );
        return VLC_EGENERIC;
    }
    FUNC38( &credential, &url );
    if( url.psz_path != NULL )
    {
        psz_path = FUNC42( url.psz_path );
        if( psz_path == NULL )
            goto error;
    }

    /* Check for some parameters */
    if( FUNC4( url.psz_host ) )
    {
        FUNC27( p_access, "Unable to extract host from %s", p_access->psz_url );
        goto error;
    }

    if( url.i_port <= 0 )
        i_port = FUNC33( p_access, "sftp-port" );
    else
        i_port = url.i_port;

    /* Create the ssh connexion and wait until the server answer */
    if( FUNC7( p_access, url.psz_host, i_port ) != VLC_SUCCESS )
        goto error;

    /* List the know hosts */
    LIBSSH2_KNOWNHOSTS *ssh_knownhosts = FUNC15( p_sys->ssh_session );
    if( !ssh_knownhosts )
        goto error;

    psz_home = FUNC10( VLC_HOME_DIR );
    char *psz_knownhosts_file;
    if( FUNC9( &psz_knownhosts_file, "%s/.ssh/known_hosts", psz_home ) != -1 )
    {
        if( FUNC16( ssh_knownhosts, psz_knownhosts_file,
                                        LIBSSH2_KNOWNHOST_FILE_OPENSSH ) < 0 )
            FUNC27( p_access, "Failure reading known_hosts '%s'", psz_knownhosts_file );
        FUNC11( psz_knownhosts_file );
    }

    const char *fingerprint = FUNC17( p_sys->ssh_session, &i_len, &i_type );
    struct libssh2_knownhost *host;
    int knownhost_fingerprint_algo;

    switch( i_type )
    {
        case LIBSSH2_HOSTKEY_TYPE_RSA:
            knownhost_fingerprint_algo = LIBSSH2_KNOWNHOST_KEY_SSHRSA;
            break;

        case LIBSSH2_HOSTKEY_TYPE_DSS:
            knownhost_fingerprint_algo = LIBSSH2_KNOWNHOST_KEY_SSHDSS;
            break;
#if LIBSSH2_VERSION_NUM >= 0x010900
        case LIBSSH2_HOSTKEY_TYPE_ECDSA_256:
            knownhost_fingerprint_algo = LIBSSH2_KNOWNHOST_KEY_ECDSA_256;
            break;

        case LIBSSH2_HOSTKEY_TYPE_ECDSA_384:
            knownhost_fingerprint_algo = LIBSSH2_KNOWNHOST_KEY_ECDSA_384;
            break;

        case LIBSSH2_HOSTKEY_TYPE_ECDSA_521:
            knownhost_fingerprint_algo = LIBSSH2_KNOWNHOST_KEY_ECDSA_521;
            break;
#endif
        default:
            FUNC27( p_access, "Host uses unrecognized session-key algorithm" );
            FUNC14( ssh_knownhosts );
            goto error;

    }

#if LIBSSH2_VERSION_NUM >= 0x010206
    int check = libssh2_knownhost_checkp( ssh_knownhosts, url.psz_host, i_port,
                                         fingerprint, i_len,
                                         LIBSSH2_KNOWNHOST_TYPE_PLAIN |
                                         LIBSSH2_KNOWNHOST_KEYENC_RAW |
                                         knownhost_fingerprint_algo,
                                         &host );
#else
    int check = FUNC12( ssh_knownhosts, url.psz_host,
                                         fingerprint, i_len,
                                         LIBSSH2_KNOWNHOST_TYPE_PLAIN |
                                         LIBSSH2_KNOWNHOST_KEYENC_RAW |
                                         knownhost_fingerprint_algo,
                                         &host );
#endif

    FUNC14( ssh_knownhosts );

    /* Check that it does match or at least that the host is unknown */
    switch(check)
    {
    case LIBSSH2_KNOWNHOST_CHECK_FAILURE:
    case LIBSSH2_KNOWNHOST_CHECK_NOTFOUND:
        FUNC26( p_access, "Unable to check the remote host" );
        break;
    case LIBSSH2_KNOWNHOST_CHECK_MATCH:
        FUNC26( p_access, "Succesfuly matched the host" );
        break;
    case LIBSSH2_KNOWNHOST_CHECK_MISMATCH:
        FUNC27( p_access, "The host does not match !! The remote key changed !!" );
        goto error;
    }

    FUNC37( &credential, p_access, "sftp-user", "sftp-pwd",
                        NULL, NULL );
    char* psz_userauthlist = NULL;
    bool b_publickey_tried = false;
    do
    {
        if (!credential.psz_username || !credential.psz_username[0])
            continue;

        if( !psz_session_username )
        {
            psz_session_username = FUNC30( credential.psz_username );
            psz_userauthlist =
                FUNC23( p_sys->ssh_session, credential.psz_username,
                                       FUNC31( credential.psz_username ) );
        }
        else if( FUNC29( psz_session_username, credential.psz_username ) != 0 )
        {
            FUNC28( p_access, "The username changed, starting a new ssh session" );

            FUNC6( p_access );
            if( FUNC7( p_access, url.psz_host, i_port ) != VLC_SUCCESS )
                goto error;

            b_publickey_tried = false;
            FUNC11( psz_session_username );
            psz_session_username = FUNC30( credential.psz_username );
            psz_userauthlist =
                FUNC23( p_sys->ssh_session, credential.psz_username,
                                       FUNC31( credential.psz_username ) );
        }
        if( !psz_session_username || !psz_userauthlist )
            goto error;

        /* TODO: Follow PreferredAuthentications in ssh_config */

        if( FUNC32( psz_userauthlist, "publickey" ) != NULL && !b_publickey_tried )
        {
            /* Don't try public key multiple times to avoid getting black
             * listed */
            b_publickey_tried = true;
            if( FUNC1( p_access, credential.psz_username ) == VLC_SUCCESS
             || FUNC2( p_access, psz_home, credential.psz_username ) == VLC_SUCCESS )
                break;
        }

        if( FUNC32( psz_userauthlist, "password" ) != NULL
         && credential.psz_password != NULL
         && FUNC24( p_sys->ssh_session,
                                       credential.psz_username,
                                       credential.psz_password ) == 0 )
        {
            FUNC39( &credential, p_access );
            break;
        }

        FUNC28( p_access, "sftp auth failed for %s", credential.psz_username );
    } while( FUNC37( &credential, p_access, "sftp-user", "sftp-pwd",
                                FUNC8("SFTP authentication"),
                                FUNC8("Please enter a valid login and password for "
                                "the sftp connexion to %s"), url.psz_host ) );

    /* Create the sftp session */
    p_sys->sftp_session = FUNC18( p_sys->ssh_session );

    if( !p_sys->sftp_session )
    {
        FUNC27( p_access, "Unable to initialize the SFTP session" );
        goto error;
    }

    /* No path, default to user Home */
    if( !psz_path )
    {
        const size_t i_size = 1024;
        int i_read;

        char* psz_remote_home = FUNC25( i_size );
        if( !psz_remote_home )
            goto error;

        i_read = FUNC22( p_sys->sftp_session, ".", 1,
                                          psz_remote_home, i_size - 1,
                                          LIBSSH2_SFTP_REALPATH );
        if( i_read <= 0 )
        {
            FUNC27( p_access, "Impossible to get the Home directory" );
            FUNC11( psz_remote_home );
            goto error;
        }
        psz_remote_home[i_read] = '\0';
        psz_path = psz_remote_home;

        /* store base url for directory read */
        char *base = FUNC41( psz_path, "sftp" );
        if( !base )
            goto error;
        if( -1 == FUNC9( &p_sys->psz_base_url, "sftp://%s%s", p_access->psz_location, base + 7 ) )
        {
            FUNC11( base );
            goto error;
        }
        FUNC11( base );
    }

    /* Get some information */
    LIBSSH2_SFTP_ATTRIBUTES attributes;
    if( FUNC21( p_sys->sftp_session, psz_path, &attributes ) )
    {
        FUNC27( p_access, "Impossible to get information about the remote path %s", psz_path );
        goto error;
    }

    if( !FUNC5( attributes.permissions ))
    {
        /* Open the given file */
        p_sys->file = FUNC19( p_sys->sftp_session, psz_path, LIBSSH2_FXF_READ, 0 );
        p_sys->filesize = attributes.filesize;

        FUNC0( Read, NULL, Control, Seek );
    }
    else
    {
        /* Open the given directory */
        p_sys->file = FUNC20( p_sys->sftp_session, psz_path );

        p_access->pf_readdir = DirRead;
        p_access->pf_control = access_vaDirectoryControlHelper;

        if( !p_sys->psz_base_url )
        {
            if( FUNC9( &p_sys->psz_base_url, "sftp://%s", p_access->psz_location ) == -1 )
                goto error;

            /* trim trailing '/' */
            size_t len = FUNC31( p_sys->psz_base_url );
            if( len > 0 && p_sys->psz_base_url[ len - 1 ] == '/' )
                p_sys->psz_base_url[ len - 1 ] = 0;
        }
    }

    if( !p_sys->file )
    {
        FUNC27( p_access, "Unable to open the remote path %s", psz_path );
        goto error;
    }

    i_result = VLC_SUCCESS;

error:
    FUNC11( psz_home );
    FUNC11( psz_session_username );
    FUNC11( psz_path );
    FUNC36( &credential );
    FUNC34( &url );
    if( i_result != VLC_SUCCESS ) {
        FUNC3( p_this );
    }
    return i_result;
}