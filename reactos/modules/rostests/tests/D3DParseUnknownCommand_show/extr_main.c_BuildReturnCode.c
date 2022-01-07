
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT ;
struct TYPE_2__ {int bCommand; } ;
typedef int LPVOID ;
typedef int INT ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ D3DHAL_DP2COMMAND ;


 scalar_t__ D3DParseUnknownCommand (int ,int *) ;
 int printf (char*,int,int) ;

VOID BuildReturnCode(DWORD * ReturnCode)
{
    INT t;
    D3DHAL_DP2COMMAND dp2command;
    DWORD lplpvReturnedCommand[2];

    for (t=0;t<256;t++)
    {
       dp2command.bCommand = t;
       ReturnCode[t] = D3DParseUnknownCommand ( (LPVOID) &dp2command, (LPVOID *) lplpvReturnedCommand) ;
       printf("D3DParseUnknownCommand return code = %x command %d \n", (UINT)ReturnCode[t], t);
    }
}
