
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tls_t ;
typedef int vlc_tls_proxy_t ;


 int free (int *) ;

__attribute__((used)) static void vlc_tls_ProxyClose(vlc_tls_t *tls)
{
    vlc_tls_proxy_t *proxy = (vlc_tls_proxy_t *)tls;

    free(proxy);
}
