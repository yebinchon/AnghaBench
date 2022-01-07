
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wVersion; } ;
typedef TYPE_1__ WSADATA ;


 int HIBYTE (int ) ;
 int LOBYTE (int ) ;
 int MAKEWORD (int,int) ;
 int WSACleanup () ;
 scalar_t__ WSAStartup (int ,TYPE_1__*) ;

__attribute__((used)) static int system_InitWSA(int hi, int lo)
{
    WSADATA data;

    if (WSAStartup(MAKEWORD(hi, lo), &data) == 0)
    {
        if (LOBYTE(data.wVersion) == 2 && HIBYTE(data.wVersion) == 2)
            return 0;

        WSACleanup( );
    }
    return -1;
}
