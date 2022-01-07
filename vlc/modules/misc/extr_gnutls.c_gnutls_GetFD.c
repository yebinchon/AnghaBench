
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_tls_t ;
struct TYPE_2__ {int session; } ;
typedef TYPE_1__ vlc_tls_gnutls_t ;


 int * gnutls_transport_get_ptr (int ) ;
 int vlc_tls_GetPollFD (int *,short*) ;

__attribute__((used)) static int gnutls_GetFD(vlc_tls_t *tls, short *restrict events)
{
    vlc_tls_gnutls_t *priv = (vlc_tls_gnutls_t *)tls;
    vlc_tls_t *sock = gnutls_transport_get_ptr(priv->session);

    return vlc_tls_GetPollFD(sock, events);
}
