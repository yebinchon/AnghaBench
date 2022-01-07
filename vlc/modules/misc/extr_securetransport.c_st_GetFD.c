
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_tls_t ;
struct TYPE_2__ {int * sock; } ;
typedef TYPE_1__ vlc_tls_st_t ;


 int vlc_tls_GetPollFD (int *,short*) ;

__attribute__((used)) static int st_GetFD (vlc_tls_t *session, short *restrict events)
{
    vlc_tls_st_t *sys = (vlc_tls_st_t *)session;
    vlc_tls_t *sock = sys->sock;

    return vlc_tls_GetPollFD(sock, events);
}
