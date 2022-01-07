
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {int NameIsString; int DataIsDirectory; scalar_t__ OffsetToData; scalar_t__ Name; } ;
struct TYPE_5__ {int StringIndex; int* StringBuffer; TYPE_2__* Lang1Entries; } ;
typedef int PWCHAR ;
typedef scalar_t__ PVOID ;
typedef scalar_t__ PUCHAR ;
typedef TYPE_1__* PTEST_RESOURCES ;
typedef TYPE_2__* PIMAGE_RESOURCE_DIRECTORY_ENTRY ;


 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int StringBuffer ;
 int TEST_RESOURCES ;
 int wcscpy (int*,int ) ;
 int wcslen (int ) ;

__attribute__((used)) static
VOID
InitializeNamedEntry(
    PTEST_RESOURCES Resource,
    PIMAGE_RESOURCE_DIRECTORY_ENTRY DirEntry,
    PWCHAR Name,
    PVOID Data)
{
    DirEntry->Name = Resource->StringIndex * 2 + FIELD_OFFSET(TEST_RESOURCES, StringBuffer);
    DirEntry->NameIsString = 1;
    DirEntry->OffsetToData = (PUCHAR)Data - (PUCHAR)Resource;
    if (DirEntry < Resource->Lang1Entries)
        DirEntry->DataIsDirectory = 1;
    Resource->StringBuffer[Resource->StringIndex] = wcslen(Name);
    wcscpy(&Resource->StringBuffer[Resource->StringIndex + 1], Name);
    Resource->StringIndex += Resource->StringBuffer[Resource->StringIndex] * 2 + 1;
}
