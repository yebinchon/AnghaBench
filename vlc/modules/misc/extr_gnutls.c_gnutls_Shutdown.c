
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tls_t ;
struct TYPE_3__ {int session; } ;
typedef TYPE_1__ vlc_tls_gnutls_t ;
typedef scalar_t__ ssize_t ;
typedef int gnutls_session_t ;


 int GNUTLS_SHUT_RDWR ;
 int GNUTLS_SHUT_WR ;
 int gnutls_Error (TYPE_1__*,scalar_t__) ;
 scalar_t__ gnutls_bye (int ,int ) ;
 scalar_t__ gnutls_record_uncork (int ,int ) ;

__attribute__((used)) static int gnutls_Shutdown(vlc_tls_t *tls, bool duplex)
{
    vlc_tls_gnutls_t *priv = (vlc_tls_gnutls_t *)tls;
    gnutls_session_t session = priv->session;
    ssize_t val;


    val = gnutls_record_uncork(session, 0);
    if (val < 0)
        return gnutls_Error(priv, val);

    val = gnutls_bye(session, duplex ? GNUTLS_SHUT_RDWR : GNUTLS_SHUT_WR);
    if (val < 0)
        return gnutls_Error(priv, val);

    return 0;
}
