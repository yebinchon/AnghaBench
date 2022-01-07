
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct hostent {scalar_t__* h_addr_list; } ;
typedef int sa ;
typedef int SOCKET ;


 int AF_INET ;
 int SCKTEST (int ) ;
 int connect (int ,struct sockaddr*,int) ;
 struct hostent* gethostbyname (char*) ;
 int htons (int) ;

int ConnectToReactOSWebsite(SOCKET sck)
{
    int iResult;
    struct hostent* host;
    struct sockaddr_in sa;


    host = gethostbyname("test.winehq.org");

    sa.sin_family = AF_INET;
    sa.sin_addr.s_addr = *(u_long*)host->h_addr_list[0];
    sa.sin_port = htons(80);

    SCKTEST(connect(sck, (struct sockaddr *)&sa, sizeof(sa)));

    return 1;
}
