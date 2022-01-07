
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct in_addr {scalar_t__ s_addr; } ;
struct hostent {scalar_t__ h_addr; } ;
typedef int WSADATA ;
typedef scalar_t__ SOCKET ;


 int AF_INET ;
 scalar_t__ INADDR_NONE ;
 scalar_t__ INVALID_SOCKET ;
 int IPPROTO_TCP ;
 int MAKEWORD (int,int) ;
 int R_ERROR ;
 int R_STATUS ;
 int SOCK_STREAM ;
 int WSACleanup () ;
 char const* WSAGetLastError () ;
 scalar_t__ WSAStartup (int ,int *) ;
 int closesocket (scalar_t__) ;
 int connect (scalar_t__,struct sockaddr*,int) ;
 struct hostent* gethostbyname (char const*) ;
 int htons (int) ;
 scalar_t__ inet_addr (char const*) ;
 int report (int ,char*,char const*) ;
 scalar_t__ socket (int ,int ,int ) ;

__attribute__((used)) static SOCKET
open_http (const char *server)
{
    WSADATA wsad;
    struct sockaddr_in sa;
    SOCKET s;

    report (R_STATUS, "Opening HTTP connection to %s", server);
    if (WSAStartup (MAKEWORD (2,2), &wsad)) return INVALID_SOCKET;

    sa.sin_family = AF_INET;
    sa.sin_port = htons (80);
    sa.sin_addr.s_addr = inet_addr (server);
    if (sa.sin_addr.s_addr == INADDR_NONE) {
        struct hostent *host = gethostbyname (server);
        if (!host) {
            report (R_ERROR, "Hostname lookup failed for %s", server);
            goto failure;
        }
        sa.sin_addr.s_addr = ((struct in_addr *)host->h_addr)->s_addr;
    }
    s = socket (AF_INET, SOCK_STREAM, IPPROTO_TCP);
    if (s == INVALID_SOCKET) {
        report (R_ERROR, "Can't open network socket: %d",
                WSAGetLastError ());
        goto failure;
    }
    if (!connect (s, (struct sockaddr*)&sa, sizeof (struct sockaddr_in)))
        return s;

    report (R_ERROR, "Can't connect: %d", WSAGetLastError ());
    closesocket (s);
 failure:
    WSACleanup ();
    return INVALID_SOCKET;
}
