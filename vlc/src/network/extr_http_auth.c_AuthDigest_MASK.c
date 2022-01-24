#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_3__ {char* psz_realm; char* psz_HA1; char* psz_algorithm; char* psz_nonce; char* psz_cnonce; char* psz_qop; int i_nonce; } ;
typedef  TYPE_1__ vlc_http_auth_t ;
struct md5_s {int dummy; } ;
typedef  int /*<<< orphan*/  psz_inonce ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct md5_s*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct md5_s*) ; 
 int /*<<< orphan*/  FUNC2 (struct md5_s*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC5 (struct md5_s*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 void* FUNC8 (char*) ; 
 int FUNC9 (char const*) ; 

__attribute__((used)) static char *FUNC10( vlc_object_t *p_this, vlc_http_auth_t *p_auth,
                         const char *psz_method, const char *psz_path,
                         const char *psz_username, const char *psz_password )
{
    char *psz_HA1 = NULL;
    char *psz_HA2 = NULL;
    char *psz_ent = NULL;
    char *psz_result = NULL;
    char psz_inonce[9];
    struct md5_s md5;
    struct md5_s ent;

    if ( p_auth->psz_realm == NULL )
    {
        FUNC4( p_this, "Digest Authentication: "
                  "Mandatory 'realm' value not available" );
        goto error;
    }

    /* H(A1) */
    if ( p_auth->psz_HA1 )
    {
        psz_HA1 = FUNC8( p_auth->psz_HA1 );
        if ( psz_HA1 == NULL )
            goto error;
    }
    else
    {
        FUNC2( &md5 );
        FUNC0( &md5, psz_username, FUNC9( psz_username ) );
        FUNC0( &md5, ":", 1 );
        FUNC0( &md5, p_auth->psz_realm, FUNC9( p_auth->psz_realm ) );
        FUNC0( &md5, ":", 1 );
        FUNC0( &md5, psz_password, FUNC9( psz_password ) );
        FUNC1( &md5 );

        psz_HA1 = FUNC5( &md5 );
        if ( psz_HA1 == NULL )
            goto error;

        if ( p_auth->psz_algorithm &&
             FUNC7( p_auth->psz_algorithm, "MD5-sess" ) == 0 )
        {
            FUNC2( &md5 );
            FUNC0( &md5, psz_HA1, 32 );
            FUNC0( &md5, ":", 1 );
            FUNC0( &md5, p_auth->psz_nonce, FUNC9( p_auth->psz_nonce ) );
            FUNC0( &md5, ":", 1 );
            FUNC0( &md5, p_auth->psz_cnonce, FUNC9( p_auth->psz_cnonce ) );
            FUNC1( &md5 );

            FUNC3( psz_HA1 );

            psz_HA1 = FUNC5( &md5 );
            if ( psz_HA1 == NULL )
                goto error;

            p_auth->psz_HA1 = FUNC8( psz_HA1 );
            if ( p_auth->psz_HA1 == NULL )
                goto error;
        }
    }

    /* H(A2) */
    FUNC2( &md5 );
    if ( *psz_method )
        FUNC0( &md5, psz_method, FUNC9( psz_method ) );
    FUNC0( &md5, ":", 1 );
    if ( psz_path )
        FUNC0( &md5, psz_path, FUNC9( psz_path ) );
    else
        FUNC0( &md5, "/", 1 );
    if ( p_auth->psz_qop && FUNC7( p_auth->psz_qop, "auth-int" ) == 0 )
    {
        FUNC2( &ent );
        /* TODO: Support for "qop=auth-int" */
        FUNC0( &ent, "", 0 );
        FUNC1( &ent );

        psz_ent = FUNC5( &ent );
        if ( psz_ent == NULL )
            goto error;

        FUNC0( &md5, ":", 1 );
        FUNC0( &md5, psz_ent, 32 );
    }
    FUNC1( &md5 );

    psz_HA2 = FUNC5( &md5 );
    if ( psz_HA2 == NULL )
        goto error;

    /* Request digest */
    FUNC2( &md5 );
    FUNC0( &md5, psz_HA1, 32 );
    FUNC0( &md5, ":", 1 );
    FUNC0( &md5, p_auth->psz_nonce, FUNC9( p_auth->psz_nonce ) );
    FUNC0( &md5, ":", 1 );
    if ( p_auth->psz_qop &&
         ( FUNC7( p_auth->psz_qop, "auth" ) == 0 ||
           FUNC7( p_auth->psz_qop, "auth-int" ) == 0 ) )
    {
        FUNC6( psz_inonce, sizeof( psz_inonce ), "%08x", p_auth->i_nonce );
        FUNC0( &md5, psz_inonce, 8 );
        FUNC0( &md5, ":", 1 );
        FUNC0( &md5, p_auth->psz_cnonce, FUNC9( p_auth->psz_cnonce ) );
        FUNC0( &md5, ":", 1 );
        FUNC0( &md5, p_auth->psz_qop, FUNC9( p_auth->psz_qop ) );
        FUNC0( &md5, ":", 1 );
    }
    FUNC0( &md5, psz_HA2, 32 );
    FUNC1( &md5 );

    psz_result = FUNC5( &md5 );

error:
    FUNC3( psz_HA1 );
    FUNC3( psz_HA2 );
    FUNC3( psz_ent );

    return psz_result;
}