
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {struct TYPE_10__* Flink; } ;
struct TYPE_9__ {TYPE_3__ RegistryPorts; } ;
struct TYPE_8__ {int pwszPortName; } ;
typedef TYPE_1__* PLOCALMON_PORT ;
typedef TYPE_2__* PLOCALMON_HANDLE ;
typedef TYPE_3__* PLIST_ENTRY ;
typedef int PCWSTR ;


 TYPE_1__* CONTAINING_RECORD (TYPE_3__*,int ,int ) ;
 int Entry ;
 int LOCALMON_PORT ;
 scalar_t__ wcscmp (int ,int ) ;

__attribute__((used)) static PLOCALMON_PORT
_FindPort(PLOCALMON_HANDLE pLocalmon, PCWSTR pwszPortName)
{
    PLIST_ENTRY pEntry;
    PLOCALMON_PORT pPort;

    for (pEntry = pLocalmon->RegistryPorts.Flink; pEntry != &pLocalmon->RegistryPorts; pEntry = pEntry->Flink)
    {
        pPort = CONTAINING_RECORD(pEntry, LOCALMON_PORT, Entry);

        if (wcscmp(pPort->pwszPortName, pwszPortName) == 0)
            return pPort;
    }

    return ((void*)0);
}
