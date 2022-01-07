
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sock; } ;
typedef TYPE_1__ httpd_client_t ;


 scalar_t__ net_GetSockAddress (int ,char*,int*) ;
 int vlc_tls_GetFD (int ) ;

char* httpd_ServerIP(const httpd_client_t *cl, char *ip, int *port)
{
    return net_GetSockAddress(vlc_tls_GetFD(cl->sock), ip, port) ? ((void*)0) : ip;
}
