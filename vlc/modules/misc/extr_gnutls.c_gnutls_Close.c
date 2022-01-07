
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_tls_t ;
struct TYPE_3__ {int session; } ;
typedef TYPE_1__ vlc_tls_gnutls_t ;


 int free (TYPE_1__*) ;
 int gnutls_deinit (int ) ;

__attribute__((used)) static void gnutls_Close (vlc_tls_t *tls)
{
    vlc_tls_gnutls_t *priv = (vlc_tls_gnutls_t *)tls;

    gnutls_deinit(priv->session);
    free(priv);
}
