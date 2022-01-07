
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {char const* psz_qop; int * psz_nonce; int * psz_realm; scalar_t__ i_nonce; void* psz_algorithm; void* psz_stale; void* psz_opaque; void* psz_domain; } ;
typedef TYPE_1__ vlc_http_auth_t ;
typedef int psz_digest_prefix ;
typedef int psz_basic_prefix ;


 void* AuthGetParam (char const*,char*) ;
 void* AuthGetParamNoQuotes (char const*,char*) ;
 int msg_Dbg (int *,char*) ;
 int msg_Warn (int *,char*,...) ;
 void* strchr (char const*,char) ;
 scalar_t__ strncasecmp (char const*,char const*,int) ;

void vlc_http_auth_ParseWwwAuthenticateHeader(
        vlc_object_t *p_this, vlc_http_auth_t *p_auth,
        const char *psz_header )
{
    static const char psz_basic_prefix[] = "Basic ";
    static const char psz_digest_prefix[] = "Digest ";



    if ( strncasecmp( psz_header, psz_basic_prefix,
                      sizeof( psz_basic_prefix ) - 1 ) == 0 )
    {

        msg_Dbg( p_this, "Using Basic Authentication" );
        psz_header += sizeof( psz_basic_prefix ) - 1;
        p_auth->psz_realm = AuthGetParam( psz_header, "realm" );
        if ( p_auth->psz_realm == ((void*)0) )
            msg_Warn( p_this, "Basic Authentication: "
                      "Mandatory 'realm' parameter is missing" );
    }
    else if ( strncasecmp( psz_header, psz_digest_prefix,
                           sizeof( psz_digest_prefix ) - 1 ) == 0 )
    {

        msg_Dbg( p_this, "Using Digest Access Authentication" );

        if ( p_auth->psz_nonce )

            return;

        psz_header += sizeof( psz_digest_prefix ) - 1;
        p_auth->psz_realm = AuthGetParam( psz_header, "realm" );
        p_auth->psz_domain = AuthGetParam( psz_header, "domain" );
        p_auth->psz_nonce = AuthGetParam( psz_header, "nonce" );
        p_auth->psz_opaque = AuthGetParam( psz_header, "opaque" );
        p_auth->psz_stale = AuthGetParamNoQuotes( psz_header, "stale" );
        p_auth->psz_algorithm = AuthGetParamNoQuotes( psz_header, "algorithm" );
        p_auth->psz_qop = AuthGetParam( psz_header, "qop" );
        p_auth->i_nonce = 0;







        if ( p_auth->psz_realm == ((void*)0) )
            msg_Warn( p_this, "Digest Access Authentication: "
                      "Mandatory 'realm' parameter is missing" );
        if ( p_auth->psz_nonce == ((void*)0) )
            msg_Warn( p_this, "Digest Access Authentication: "
                      "Mandatory 'nonce' parameter is missing" );


        if ( p_auth->psz_qop )
        {
            char *psz_tmp = strchr( p_auth->psz_qop, ',' );
            if ( psz_tmp )
                *psz_tmp = '\0';
        }
    }
    else
    {
        const char *psz_end = strchr( psz_header, ' ' );
        if ( psz_end )
            msg_Warn( p_this, "Unknown authentication scheme: '%*s'",
                      (int)(psz_end - psz_header), psz_header );
        else
            msg_Warn( p_this, "Unknown authentication scheme: '%s'",
                      psz_header );
    }
}
