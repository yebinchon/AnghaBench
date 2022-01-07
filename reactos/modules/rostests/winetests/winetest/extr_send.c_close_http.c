
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCKET ;


 scalar_t__ WSACleanup () ;
 int closesocket (int ) ;

__attribute__((used)) static int
close_http (SOCKET s)
{
    int ret;

    ret = closesocket (s);
    return (WSACleanup () || ret);
}
