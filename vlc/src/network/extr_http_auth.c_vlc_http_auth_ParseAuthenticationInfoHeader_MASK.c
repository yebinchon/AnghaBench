#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_4__ {char* psz_cnonce; int i_nonce; char* psz_qop; char* psz_nonce; } ;
typedef  TYPE_1__ vlc_http_auth_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,char const*,char const*,char const*,char const*) ; 
 char* FUNC1 (char const*,char*) ; 
 char* FUNC2 (char const*,char*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int FUNC7 (char*,int /*<<< orphan*/ *,int) ; 

int FUNC8(
        vlc_object_t *p_this, vlc_http_auth_t *p_auth,
        const char *psz_header, const char *psz_method, const char *psz_path,
        const char *psz_username, const char *psz_password )
{
    char *psz_nextnonce = FUNC1( psz_header, "nextnonce" );
    char *psz_qop = FUNC2( psz_header, "qop" );
    char *psz_rspauth = FUNC1( psz_header, "rspauth" );
    char *psz_cnonce = FUNC1( psz_header, "cnonce" );
    char *psz_nc = FUNC2( psz_header, "nc" );
    char *psz_digest = NULL;
    int i_err = VLC_SUCCESS;
    int i_nonce;

    if ( psz_cnonce )
    {
        if ( FUNC6( psz_cnonce, p_auth->psz_cnonce ) != 0 )
        {
            FUNC4( p_this, "HTTP Digest Access Authentication: server "
                             "replied with a different client nonce value." );
            i_err = VLC_EGENERIC;
            goto error;
        }

        if ( psz_nc )
        {
            i_nonce = FUNC7( psz_nc, NULL, 16 );

            if ( i_nonce != p_auth->i_nonce )
            {
                FUNC4( p_this, "HTTP Digest Access Authentication: server "
                                 "replied with a different nonce count "
                                 "value." );
                i_err = VLC_EGENERIC;
                goto error;
            }
        }

        if ( psz_qop && p_auth->psz_qop &&
             FUNC6( psz_qop, p_auth->psz_qop ) != 0 )
            FUNC5( p_this, "HTTP Digest Access Authentication: server "
                              "replied using a different 'quality of "
                              "protection' option" );

        /* All the clear text values match, let's now check the response
         * digest.
         *
         * TODO: Support for "qop=auth-int"
         */
        psz_digest = FUNC0( p_this, p_auth, psz_method, psz_path,
                                 psz_username, psz_password );
        if( psz_digest == NULL || FUNC6( psz_digest, psz_rspauth ) != 0 )
        {
            FUNC4( p_this, "HTTP Digest Access Authentication: server "
                             "replied with an invalid response digest "
                             "(expected value: %s).", psz_digest );
            i_err = VLC_EGENERIC;
            goto error;
        }
    }

    if ( psz_nextnonce )
    {
        FUNC3( p_auth->psz_nonce );
        p_auth->psz_nonce = psz_nextnonce;
        psz_nextnonce = NULL;
    }

error:
    FUNC3( psz_nextnonce );
    FUNC3( psz_qop );
    FUNC3( psz_rspauth );
    FUNC3( psz_cnonce );
    FUNC3( psz_nc );
    FUNC3( psz_digest );

    return i_err;
}