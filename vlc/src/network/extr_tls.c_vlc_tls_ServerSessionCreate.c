
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {struct TYPE_11__* p; } ;
typedef TYPE_2__ vlc_tls_t ;
struct TYPE_12__ {TYPE_1__* ops; } ;
typedef TYPE_3__ vlc_tls_server_t ;
struct TYPE_10__ {TYPE_2__* (* open ) (TYPE_3__*,TYPE_2__*,char const* const*) ;} ;


 TYPE_2__* stub1 (TYPE_3__*,TYPE_2__*,char const* const*) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;

vlc_tls_t *vlc_tls_ServerSessionCreate(vlc_tls_server_t *crd,
                                       vlc_tls_t *sock,
                                       const char *const *alpn)
{
    int canc = vlc_savecancel();
    vlc_tls_t *session = crd->ops->open(crd, sock, alpn);
    vlc_restorecancel(canc);
    if (session != ((void*)0))
        session->p = sock;
    return session;
}
