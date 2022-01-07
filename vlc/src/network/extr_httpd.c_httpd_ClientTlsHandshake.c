
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int p_tls; } ;
typedef TYPE_1__ httpd_host_t ;
struct TYPE_6__ {int i_state; int sock; } ;
typedef TYPE_2__ httpd_client_t ;


 int HTTPD_CLIENT_DEAD ;
 int HTTPD_CLIENT_RECEIVING ;
 int HTTPD_CLIENT_TLS_HS_IN ;
 int HTTPD_CLIENT_TLS_HS_OUT ;
 int vlc_tls_SessionHandshake (int ,int ) ;

__attribute__((used)) static void httpd_ClientTlsHandshake(httpd_host_t *host, httpd_client_t *cl)
{
    switch (vlc_tls_SessionHandshake(host->p_tls, cl->sock))
    {
        case -1: cl->i_state = HTTPD_CLIENT_DEAD; break;
        case 0: cl->i_state = HTTPD_CLIENT_RECEIVING; break;
        case 1: cl->i_state = HTTPD_CLIENT_TLS_HS_IN; break;
        case 2: cl->i_state = HTTPD_CLIENT_TLS_HS_OUT; break;
    }
}
