
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_5__ {scalar_t__ StringBuffer; int * DataEntries; int * Lang4Entries; int Lang4Directory; int * Lang3Entries; int Lang3Directory; int * Lang2Entries; int Lang2Directory; int * Lang1Entries; int Lang1Directory; int * Name2Entries; int Name2Directory; int * Name1Entries; int Name1Directory; int * TypeEntries; int TypeDirectory; scalar_t__ StringIndex; } ;
typedef int PVOID ;
typedef TYPE_1__* PTEST_RESOURCES ;


 int InitializeDataEntry (int ,int *,scalar_t__,int) ;
 int InitializeIdEntry (TYPE_1__*,int *,int,int *) ;
 int InitializeNamedEntry (TYPE_1__*,int *,char*,int *) ;
 int InitializeResourceDirectory (int *,int,int) ;
 int memset (scalar_t__,int ,int) ;

__attribute__((used)) static
VOID
InitializeTestResource(
    PVOID ImageBase,
    PTEST_RESOURCES Resource)
{

    memset(Resource->StringBuffer, 0, sizeof(Resource->StringBuffer));
    Resource->StringIndex = 0;

    InitializeResourceDirectory(&Resource->TypeDirectory, 0, 2);
    InitializeIdEntry(Resource, &Resource->TypeEntries[0], 1, &Resource->Name1Directory);
    InitializeIdEntry(Resource, &Resource->TypeEntries[1], 2, &Resource->Name2Directory);

    InitializeResourceDirectory(&Resource->Name1Directory, 1, 1);
    InitializeNamedEntry(Resource, &Resource->Name1Entries[0], L"TEST", &Resource->Lang1Directory);
    InitializeIdEntry(Resource, &Resource->Name1Entries[1], 7, &Resource->Lang2Directory);

    InitializeResourceDirectory(&Resource->Name2Directory, 2, 0);
    InitializeNamedEntry(Resource, &Resource->Name2Entries[0], L"LOL", &Resource->Lang3Directory);
    InitializeNamedEntry(Resource, &Resource->Name2Entries[1], L"xD", &Resource->Lang4Directory);

    InitializeResourceDirectory(&Resource->Lang1Directory, 0, 2);
    InitializeIdEntry(Resource, &Resource->Lang1Entries[0], 0x409, &Resource->DataEntries[0]);
    InitializeIdEntry(Resource, &Resource->Lang1Entries[1], 0x407, &Resource->DataEntries[1]);

    InitializeResourceDirectory(&Resource->Lang2Directory, 0, 2);
    InitializeIdEntry(Resource, &Resource->Lang2Entries[0], 0x408, &Resource->DataEntries[2]);
    InitializeIdEntry(Resource, &Resource->Lang2Entries[1], 0x406, &Resource->DataEntries[3]);

    InitializeResourceDirectory(&Resource->Lang3Directory, 0, 2);
    InitializeIdEntry(Resource, &Resource->Lang3Entries[0], 0x405, &Resource->DataEntries[4]);
    InitializeIdEntry(Resource, &Resource->Lang3Entries[1], 0x403, &Resource->DataEntries[5]);

    InitializeResourceDirectory(&Resource->Lang4Directory, 0, 2);
    InitializeIdEntry(Resource, &Resource->Lang4Entries[0], 0x402, &Resource->DataEntries[6]);
    InitializeIdEntry(Resource, &Resource->Lang4Entries[1], 0x404, &Resource->DataEntries[7]);

    InitializeDataEntry(ImageBase, &Resource->DataEntries[0], Resource->StringBuffer + 0, 2);
    InitializeDataEntry(ImageBase, &Resource->DataEntries[1], Resource->StringBuffer + 2, 4);
    InitializeDataEntry(ImageBase, &Resource->DataEntries[2], Resource->StringBuffer + 4, 6);
    InitializeDataEntry(ImageBase, &Resource->DataEntries[3], Resource->StringBuffer + 6, 8);
    InitializeDataEntry(ImageBase, &Resource->DataEntries[4], Resource->StringBuffer + 8, 10);
    InitializeDataEntry(ImageBase, &Resource->DataEntries[5], Resource->StringBuffer + 10, 12);
    InitializeDataEntry(ImageBase, &Resource->DataEntries[6], Resource->StringBuffer + 12, 14);
    InitializeDataEntry(ImageBase, &Resource->DataEntries[7], Resource->StringBuffer + 14, 16);

}
