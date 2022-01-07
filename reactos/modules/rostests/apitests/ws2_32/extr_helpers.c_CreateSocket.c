
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SOCKET ;


 int AF_INET ;
 scalar_t__ INVALID_SOCKET ;
 int IPPROTO_TCP ;
 int SOCK_STREAM ;
 int WSACleanup () ;
 int WSAGetLastError () ;
 int ok (int,char*,scalar_t__) ;
 int printf (char*,int) ;
 scalar_t__ socket (int ,int ,int ) ;

int CreateSocket(SOCKET* psck)
{

    *psck = socket(AF_INET, SOCK_STREAM, IPPROTO_TCP);
    ok(*psck != INVALID_SOCKET, "*psck = %d\n", *psck);

    if(*psck == INVALID_SOCKET)
    {
        printf("Winsock error code is %u\n", WSAGetLastError());
        WSACleanup();
        return 0;
    }

    return 1;
}
