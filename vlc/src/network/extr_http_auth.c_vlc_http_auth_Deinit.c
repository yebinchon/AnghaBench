
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int psz_HA1; int psz_cnonce; int psz_qop; int psz_algorithm; int psz_stale; int psz_opaque; int psz_nonce; int psz_domain; int psz_realm; } ;
typedef TYPE_1__ vlc_http_auth_t ;


 int free (int ) ;

void vlc_http_auth_Deinit( vlc_http_auth_t *p_auth )
{
    free( p_auth->psz_realm );
    free( p_auth->psz_domain );
    free( p_auth->psz_nonce );
    free( p_auth->psz_opaque );
    free( p_auth->psz_stale );
    free( p_auth->psz_algorithm );
    free( p_auth->psz_qop );
    free( p_auth->psz_cnonce );
    free( p_auth->psz_HA1 );
}
