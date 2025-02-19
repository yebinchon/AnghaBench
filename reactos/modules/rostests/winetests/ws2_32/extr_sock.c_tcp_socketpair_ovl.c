
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int addr ;
typedef scalar_t__ SOCKET ;


 int AF_INET ;
 scalar_t__ INVALID_SOCKET ;
 int IPPROTO_TCP ;
 int SOCK_STREAM ;
 scalar_t__ WSASocketW (int ,int ,int ,int *,int ,int ) ;
 int WSA_FLAG_OVERLAPPED ;
 scalar_t__ accept (scalar_t__,struct sockaddr*,int*) ;
 int bind (scalar_t__,struct sockaddr*,int) ;
 int closesocket (scalar_t__) ;
 int connect (scalar_t__,struct sockaddr*,int) ;
 int getsockname (scalar_t__,struct sockaddr*,int*) ;
 int inet_addr (char*) ;
 int listen (scalar_t__,int) ;
 int memset (struct sockaddr_in*,int ,int) ;

__attribute__((used)) static int tcp_socketpair_ovl(SOCKET *src, SOCKET *dst)
{
    SOCKET server = INVALID_SOCKET;
    struct sockaddr_in addr;
    int len, ret;

    *src = INVALID_SOCKET;
    *dst = INVALID_SOCKET;

    *src = WSASocketW(AF_INET, SOCK_STREAM, IPPROTO_TCP, ((void*)0), 0, WSA_FLAG_OVERLAPPED);
    if (*src == INVALID_SOCKET)
        goto end;

    server = WSASocketW(AF_INET, SOCK_STREAM, IPPROTO_TCP, ((void*)0), 0, WSA_FLAG_OVERLAPPED);
    if (server == INVALID_SOCKET)
        goto end;

    memset(&addr, 0, sizeof(addr));
    addr.sin_family = AF_INET;
    addr.sin_addr.s_addr = inet_addr("127.0.0.1");
    ret = bind(server, (struct sockaddr *)&addr, sizeof(addr));
    if (ret != 0)
        goto end;

    len = sizeof(addr);
    ret = getsockname(server, (struct sockaddr *)&addr, &len);
    if (ret != 0)
        goto end;

    ret = listen(server, 1);
    if (ret != 0)
        goto end;

    ret = connect(*src, (struct sockaddr *)&addr, sizeof(addr));
    if (ret != 0)
        goto end;

    len = sizeof(addr);
    *dst = accept(server, (struct sockaddr *)&addr, &len);

end:
    if (server != INVALID_SOCKET)
        closesocket(server);
    if (*src != INVALID_SOCKET && *dst != INVALID_SOCKET)
        return 0;
    closesocket(*src);
    closesocket(*dst);
    return -1;
}
