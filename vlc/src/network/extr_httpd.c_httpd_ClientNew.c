
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_tls_t ;
typedef int vlc_tick_t ;
struct TYPE_5__ {int * url; int * sock; } ;
typedef TYPE_1__ httpd_client_t ;


 int httpd_ClientInit (TYPE_1__*,int ) ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static httpd_client_t *httpd_ClientNew(vlc_tls_t *sock, vlc_tick_t now)
{
    httpd_client_t *cl = malloc(sizeof(httpd_client_t));

    if (!cl) return ((void*)0);

    cl->sock = sock;
    cl->url = ((void*)0);

    httpd_ClientInit(cl, now);
    return cl;
}
