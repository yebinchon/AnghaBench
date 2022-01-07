
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_7__ {int Buffer; } ;
struct TYPE_6__ {scalar_t__* EntryContext; int DefaultLength; scalar_t__* DefaultData; int DefaultType; int Name; int Flags; } ;
typedef TYPE_1__ RTL_QUERY_REGISTRY_TABLE ;
typedef int QueryTable ;
typedef TYPE_2__* PUNICODE_STRING ;
typedef int NTSTATUS ;
typedef int BOOLEAN ;


 int NT_SUCCESS (int ) ;
 int OfflinePath ;
 int REG_DWORD ;
 int RTL_QUERY_REGISTRY_DIRECT ;
 int RTL_REGISTRY_ABSOLUTE ;
 int RtlQueryRegistryValues (int ,int ,TYPE_1__*,int *,int *) ;
 int RtlZeroMemory (TYPE_1__*,int) ;

BOOLEAN
IsOffline(PUNICODE_STRING SymbolicName)
{
    NTSTATUS Status;
    ULONG IsOffline, Default;
    RTL_QUERY_REGISTRY_TABLE QueryTable[2];




    RtlZeroMemory(QueryTable, sizeof(QueryTable));
    QueryTable[0].Flags = RTL_QUERY_REGISTRY_DIRECT;
    QueryTable[0].Name = SymbolicName->Buffer;
    QueryTable[0].EntryContext = &IsOffline;
    QueryTable[0].DefaultType = REG_DWORD;
    QueryTable[0].DefaultLength = sizeof(ULONG);
    QueryTable[0].DefaultData = &Default;

    Default = 0;


    Status = RtlQueryRegistryValues(RTL_REGISTRY_ABSOLUTE,
                                    OfflinePath,
                                    QueryTable,
                                    ((void*)0),
                                    ((void*)0));
    if (!NT_SUCCESS(Status))
    {
        IsOffline = 0;
    }

    return (IsOffline != 0);
}
