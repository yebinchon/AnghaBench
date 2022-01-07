
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_6__ {scalar_t__ pwszPortName; } ;
struct TYPE_5__ {int fPortType; scalar_t__ Reserved; } ;
typedef scalar_t__ PWSTR ;
typedef TYPE_1__* PPORT_INFO_2W ;
typedef int PORT_INFO_2W ;
typedef TYPE_2__* PLOCALMON_PORT ;
typedef int * PDWORD ;
typedef scalar_t__ PCWSTR ;
typedef int PBYTE ;
typedef int DWORD ;


 int PORT_TYPE_READ ;
 int PORT_TYPE_WRITE ;
 int PackStrings (scalar_t__*,int ,int ,int ) ;
 scalar_t__ cbLocalMonitor ;
 scalar_t__ cbLocalPort ;
 int dwPortInfo2Offsets ;
 scalar_t__ pwszLocalMonitor ;
 scalar_t__ pwszLocalPort ;
 int wcslen (scalar_t__) ;

__attribute__((used)) static void
_LocalmonGetPortLevel2(PLOCALMON_PORT pPort, PPORT_INFO_2W* ppPortInfo, PBYTE* ppPortInfoEnd, PDWORD pcbNeeded)
{
    DWORD cbPortName;
    PCWSTR pwszStrings[3];


    if (!ppPortInfo)
    {
        cbPortName = (wcslen(pPort->pwszPortName) + 1) * sizeof(WCHAR);

        *pcbNeeded += sizeof(PORT_INFO_2W) + cbPortName + cbLocalMonitor + cbLocalPort;
        return;
    }


    (*ppPortInfo)->fPortType = PORT_TYPE_WRITE | PORT_TYPE_READ;
    (*ppPortInfo)->Reserved = 0;


    pwszStrings[0] = pPort->pwszPortName;


    pwszStrings[1] = (PWSTR)pwszLocalMonitor;


    pwszStrings[2] = (PWSTR)pwszLocalPort;


    *ppPortInfoEnd = PackStrings(pwszStrings, (PBYTE)(*ppPortInfo), dwPortInfo2Offsets, *ppPortInfoEnd);
    (*ppPortInfo)++;
}
