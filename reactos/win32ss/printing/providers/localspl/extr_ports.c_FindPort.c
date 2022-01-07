
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* Flink; } ;
struct TYPE_7__ {int pwszName; } ;
typedef TYPE_1__* PLOCAL_PORT ;
typedef TYPE_2__* PLIST_ENTRY ;
typedef int PCWSTR ;


 TYPE_1__* CONTAINING_RECORD (TYPE_2__*,int ,int ) ;
 int Entry ;
 int LOCAL_PORT ;
 int TRACE (char*,int ) ;
 TYPE_2__ _PortList ;
 scalar_t__ _wcsicmp (int ,int ) ;

PLOCAL_PORT
FindPort(PCWSTR pwszName)
{
    PLIST_ENTRY pEntry;
    PLOCAL_PORT pPort;

    TRACE("FindPort(%S)\n", pwszName);

    if (!pwszName)
        return ((void*)0);

    for (pEntry = _PortList.Flink; pEntry != &_PortList; pEntry = pEntry->Flink)
    {
        pPort = CONTAINING_RECORD(pEntry, LOCAL_PORT, Entry);

        if (_wcsicmp(pPort->pwszName, pwszName) == 0)
            return pPort;
    }

    return ((void*)0);
}
