
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {char* psz_algorithm; char* psz_qop; char* psz_cnonce; char* psz_opaque; scalar_t__ i_nonce; int psz_nonce; int psz_realm; } ;
typedef TYPE_1__ vlc_http_auth_t ;


 char* AuthDigest (int *,TYPE_1__*,char const*,char const*,char const*,char const*) ;
 char* GenerateCnonce () ;
 int asprintf (char**,char*,char const*,...) ;
 int free (char*) ;
 int msg_Err (int *,char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* vlc_b64_encode (char*) ;

char *vlc_http_auth_FormatAuthorizationHeader(
        vlc_object_t *p_this, vlc_http_auth_t *p_auth,
        const char *psz_method, const char *psz_path,
        const char *psz_username, const char *psz_password )
{
    char *psz_result = ((void*)0);
    char *psz_buffer = ((void*)0);
    char *psz_base64 = ((void*)0);
    int i_rc;

    if ( p_auth->psz_nonce )
    {

        if ( p_auth->psz_algorithm &&
             strcmp( p_auth->psz_algorithm, "MD5" ) != 0 &&
             strcmp( p_auth->psz_algorithm, "MD5-sess" ) != 0 )
        {
            msg_Err( p_this, "Digest Access Authentication: "
                     "Unknown algorithm '%s'", p_auth->psz_algorithm );
            goto error;
        }

        if ( p_auth->psz_qop != ((void*)0) || p_auth->psz_cnonce == ((void*)0) )
        {
            free( p_auth->psz_cnonce );

            p_auth->psz_cnonce = GenerateCnonce();
            if ( p_auth->psz_cnonce == ((void*)0) )
                goto error;
        }

        ++p_auth->i_nonce;

        psz_buffer = AuthDigest( p_this, p_auth, psz_method, psz_path,
                                 psz_username, psz_password );
        if ( psz_buffer == ((void*)0) )
            goto error;

        i_rc = asprintf( &psz_result,
            "Digest "

            "username=\"%s\", "
            "realm=\"%s\", "
            "nonce=\"%s\", "
            "uri=\"%s\", "
            "response=\"%s\", "

            "%s%s%s"
            "%s%s%s"
            "%s%s%s"
            "%s%s%s"
            "%s=\"%08x\"",

            psz_username,
            p_auth->psz_realm,
            p_auth->psz_nonce,
            psz_path ? psz_path : "/",
            psz_buffer,

            p_auth->psz_algorithm ? "algorithm=\"" : "",
            p_auth->psz_algorithm ? p_auth->psz_algorithm : "",
            p_auth->psz_algorithm ? "\", " : "",
            p_auth->psz_cnonce ? "cnonce=\"" : "",
            p_auth->psz_cnonce ? p_auth->psz_cnonce : "",
            p_auth->psz_cnonce ? "\", " : "",
            p_auth->psz_opaque ? "opaque=\"" : "",
            p_auth->psz_opaque ? p_auth->psz_opaque : "",
            p_auth->psz_opaque ? "\", " : "",
            p_auth->psz_qop ? "qop=\"" : "",
            p_auth->psz_qop ? p_auth->psz_qop : "",
            p_auth->psz_qop ? "\", " : "",

            p_auth->i_nonce ? "nc" : "uglyhack",
            p_auth->i_nonce
        );
        if ( i_rc < 0 )
            goto error;
    }
    else
    {

        i_rc = asprintf( &psz_buffer, "%s:%s", psz_username, psz_password );
        if ( i_rc < 0 )
            goto error;

        psz_base64 = vlc_b64_encode( psz_buffer );
        if ( psz_base64 == ((void*)0) )
            goto error;

        i_rc = asprintf( &psz_result, "Basic %s", psz_base64 );
        if ( i_rc < 0 )
            goto error;
    }

error:
    free( psz_buffer );
    free( psz_base64 );

    return psz_result;
}
