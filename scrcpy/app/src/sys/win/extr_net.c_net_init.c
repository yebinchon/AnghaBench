
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WSADATA ;


 int LOGC (char*,int) ;
 int MAKEWORD (int,int) ;
 scalar_t__ WSAStartup (int ,int *) ;

bool
net_init(void) {
    WSADATA wsa;
    int res = WSAStartup(MAKEWORD(2, 2), &wsa) < 0;
    if (res < 0) {
        LOGC("WSAStartup failed with error %d", res);
        return 0;
    }
    return 1;
}
