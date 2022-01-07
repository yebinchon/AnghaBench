
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_tls_t ;
struct TYPE_6__ {int tls; int session; } ;
typedef TYPE_1__ vlc_tls_gnutls_t ;
struct TYPE_7__ {int sys; } ;
typedef TYPE_2__ vlc_tls_client_t ;
typedef int gnutls_session_t ;


 int GNUTLS_CLIENT ;
 int GNUTLS_NAME_DNS ;
 int VLC_OBJECT (TYPE_2__*) ;
 TYPE_1__* gnutls_SessionOpen (int ,int ,int ,int *,char const* const*) ;
 int gnutls_dh_set_prime_bits (int ,int) ;
 int gnutls_server_name_set (int ,int ,char const*,int ) ;
 scalar_t__ likely (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static vlc_tls_t *gnutls_ClientSessionOpen(vlc_tls_client_t *crd,
                                           vlc_tls_t *sk, const char *hostname,
                                           const char *const *alpn)
{
    vlc_tls_gnutls_t *priv = gnutls_SessionOpen(VLC_OBJECT(crd), GNUTLS_CLIENT,
                                                crd->sys, sk, alpn);
    if (priv == ((void*)0))
        return ((void*)0);

    gnutls_session_t session = priv->session;


    gnutls_dh_set_prime_bits (session, 1024);

    if (likely(hostname != ((void*)0)))

        gnutls_server_name_set (session, GNUTLS_NAME_DNS,
                                hostname, strlen (hostname));

    return &priv->tls;
}
