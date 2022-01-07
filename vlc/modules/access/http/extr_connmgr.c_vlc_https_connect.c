
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tls_t ;
typedef int vlc_tls_client_t ;


 int free (char*) ;
 int strcmp (char*,char*) ;
 int * vlc_tls_SocketOpenTLS (int *,char const*,unsigned int,char*,char const**,char**) ;

vlc_tls_t *vlc_https_connect(vlc_tls_client_t *creds, const char *name,
                             unsigned port, bool *restrict two)
{
    if (port == 0)
        port = 443;


    const char *alpn[] = { "h2", "http/1.1", ((void*)0) };
    char *alp;

    vlc_tls_t *tls = vlc_tls_SocketOpenTLS(creds, name, port, "https",
                                           alpn + !*two, &alp);
    if (tls != ((void*)0))
    {
        *two = (alp != ((void*)0)) && !strcmp(alp, "h2");
        free(alp);
    }
    return tls;
}
