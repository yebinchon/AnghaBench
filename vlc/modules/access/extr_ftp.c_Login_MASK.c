#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_15__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  psz_host; } ;
typedef  TYPE_2__ vlc_url_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_23__ {char* psz_username; int /*<<< orphan*/  psz_password; } ;
typedef  TYPE_3__ vlc_credential ;
struct TYPE_20__ {int /*<<< orphan*/  b_authtls; } ;
struct TYPE_21__ {int /*<<< orphan*/  i_port; int /*<<< orphan*/  psz_host; } ;
struct TYPE_24__ {scalar_t__ tlsmode; TYPE_15__ features; int /*<<< orphan*/ * cmd; TYPE_1__ url; } ;
typedef  TYPE_4__ access_sys_t ;

/* Variables and functions */
 scalar_t__ EXPLICIT ; 
 int /*<<< orphan*/  FeaturesCheck ; 
 scalar_t__ IMPLICIT ; 
 int /*<<< orphan*/  LOGIN_DIALOG_TEXT ; 
 int /*<<< orphan*/  LOGIN_DIALOG_TITLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_4__*,char const*,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ NONE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_4__*,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_15__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_4__*,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 scalar_t__ FUNC12 (TYPE_3__*,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17( vlc_object_t *p_access, access_sys_t *p_sys, const char *path )
{
    int i_answer;

    /* *** Open a TCP connection with server *** */
    p_sys->cmd = FUNC16( p_access, p_sys->url.psz_host,
                                        p_sys->url.i_port );
    if( p_sys->cmd == NULL )
    {
        FUNC8( p_access, "connection failed" );
        FUNC15( p_access, FUNC1("Network interaction failed"), "%s",
            FUNC1("VLC could not connect with the given server.") );
        goto error;
    }

    if ( p_sys->tlsmode == IMPLICIT ) /* FTPS Mode */
    {
        if ( FUNC3( p_access, p_sys, "ftps") < 0 )
            goto error;
    }

    while( FUNC5( p_access, p_sys, &i_answer, NULL ) == 1 );

    if( i_answer / 100 != 2 )
    {
        FUNC8( p_access, "connection rejected" );
        FUNC15( p_access, FUNC1("Network interaction failed"), "%s",
            FUNC1("VLC's connection to the given server was rejected.") );
        goto error;
    }

    FUNC7( p_access, "connection accepted (%d)", i_answer );

    /* Features check first */
    if( FUNC6( p_access, p_sys, "FEAT" ) < 0
     || FUNC4( p_access, p_sys, NULL, NULL,
                        FeaturesCheck, &p_sys->features ) < 0 )
    {
         FUNC8( p_access, "cannot get server features" );
         goto error;
    }

    /* Create TLS Session */
    if( p_sys->tlsmode == EXPLICIT )
    {
        if ( ! p_sys->features.b_authtls )
        {
            FUNC8( p_access, "Server does not support TLS" );
            goto error;
        }

        if( FUNC6( p_access, p_sys, "AUTH TLS" ) < 0
         || FUNC5( p_access, p_sys, &i_answer, NULL ) < 0
         || i_answer != 234 )
        {
             FUNC8( p_access, "cannot switch to TLS: server replied with code %d",
                      i_answer );
             goto error;
        }

        if( FUNC3( p_access, p_sys, "ftpes") < 0 )
        {
            goto error;
        }
    }

    if( p_sys->tlsmode != NONE )
    {
        if( FUNC6( p_access, p_sys, "PBSZ 0" ) < 0 ||
            FUNC5( p_access, p_sys, &i_answer, NULL ) < 0 ||
            i_answer != 200 )
        {
            FUNC8( p_access, "Can't truncate Protection buffer size for TLS" );
            goto error;
        }

        if( FUNC6( p_access, p_sys, "PROT P" ) < 0 ||
            FUNC5( p_access, p_sys, &i_answer, NULL ) < 0 ||
            i_answer != 200 )
        {
            FUNC8( p_access, "Can't set Data channel protection" );
            goto error;
        }
    }

    vlc_url_t url;
    vlc_credential credential;
    if( FUNC10( &url, path ) != 0 )
    {
        FUNC9( &url );
        goto error;
    }
    FUNC13( &credential, &url );
    bool b_logged = false;

    /* First: try credentials from url / option */
    FUNC12( &credential, p_access, "ftp-user", "ftp-pwd",
                        NULL, NULL );
    do
    {
        const char *psz_username = credential.psz_username;

        if( psz_username == NULL ) /* use anonymous by default */
            psz_username = "anonymous";

        if( FUNC0( p_access, p_sys, psz_username,
                          credential.psz_password, &b_logged ) != 0
         || b_logged )
            break;
    }
    while( FUNC12( &credential, p_access, "ftp-user", "ftp-pwd",
                               LOGIN_DIALOG_TITLE, LOGIN_DIALOG_TEXT,
                               url.psz_host ) );

    if( b_logged )
    {
        FUNC14( &credential, p_access );
        FUNC11( &credential );
        FUNC9( &url );
        return 0;
    }
    FUNC11( &credential );
    FUNC9( &url );
error:
    FUNC2( p_sys );
    return -1;
}