
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int pwszPortName; } ;
typedef scalar_t__ PPORT_INFO_1W ;
typedef int PORT_INFO_1W ;
typedef TYPE_1__* PLOCALMON_PORT ;
typedef int* PDWORD ;
typedef int PCWSTR ;
typedef int PBYTE ;
typedef int DWORD ;


 int PackStrings (int *,int ,int ,int ) ;
 int dwPortInfo1Offsets ;
 int wcslen (int ) ;

__attribute__((used)) static void
_LocalmonGetPortLevel1(PLOCALMON_PORT pPort, PPORT_INFO_1W* ppPortInfo, PBYTE* ppPortInfoEnd, PDWORD pcbNeeded)
{
    DWORD cbPortName;
    PCWSTR pwszStrings[1];


    if (!ppPortInfo)
    {
        cbPortName = (wcslen(pPort->pwszPortName) + 1) * sizeof(WCHAR);

        *pcbNeeded += sizeof(PORT_INFO_1W) + cbPortName;
        return;
    }


    pwszStrings[0] = pPort->pwszPortName;


    *ppPortInfoEnd = PackStrings(pwszStrings, (PBYTE)(*ppPortInfo), dwPortInfo1Offsets, *ppPortInfoEnd);
    (*ppPortInfo)++;
}
