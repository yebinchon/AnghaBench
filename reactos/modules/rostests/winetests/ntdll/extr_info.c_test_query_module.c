
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_9__ {scalar_t__ Id; } ;
struct TYPE_8__ {scalar_t__ ModulesCount; TYPE_2__* Modules; } ;
typedef TYPE_1__ SYSTEM_MODULE_INFORMATION ;
typedef TYPE_2__ SYSTEM_MODULE ;
typedef scalar_t__ NTSTATUS ;


 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 TYPE_1__* HeapReAlloc (int ,int ,TYPE_1__*,scalar_t__) ;
 scalar_t__ STATUS_INFO_LENGTH_MISMATCH ;
 scalar_t__ STATUS_SUCCESS ;
 int SystemModuleInformation ;
 int ok (int,char*,...) ;
 scalar_t__ pNtQuerySystemInformation (int ,TYPE_1__*,scalar_t__,scalar_t__*) ;

__attribute__((used)) static void test_query_module(void)
{
    NTSTATUS status;
    ULONG ReturnLength;
    ULONG ModuleCount, i;

    ULONG SystemInformationLength = sizeof(SYSTEM_MODULE_INFORMATION);
    SYSTEM_MODULE_INFORMATION* smi = HeapAlloc(GetProcessHeap(), 0, SystemInformationLength);
    SYSTEM_MODULE* sm;


    status = pNtQuerySystemInformation(SystemModuleInformation, smi, 0, &ReturnLength);
    ok( status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);
    ok( ReturnLength > 0, "Expected a ReturnLength to show the needed length\n");

    SystemInformationLength = ReturnLength;
    smi = HeapReAlloc(GetProcessHeap(), 0, smi , SystemInformationLength);
    status = pNtQuerySystemInformation(SystemModuleInformation, smi, SystemInformationLength, &ReturnLength);
    ok( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);

    ModuleCount = smi->ModulesCount;
    sm = &smi->Modules[0];

    ok( ModuleCount > 0, "Expected some modules to be loaded\n");


    for (i = 0; i < ModuleCount ; i++)
    {
        ok( i == sm->Id, "Id (%d) should have matched %u\n", sm->Id, i);
        sm++;
    }

    HeapFree( GetProcessHeap(), 0, smi);
}
