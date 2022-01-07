
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
typedef int USHORT ;
struct TYPE_6__ {int DataIsDirectory; scalar_t__ OffsetToData; scalar_t__ NameIsString; int Name; } ;
struct TYPE_5__ {TYPE_2__* Lang1Entries; } ;
typedef scalar_t__ PVOID ;
typedef scalar_t__ PUCHAR ;
typedef TYPE_1__* PTEST_RESOURCES ;
typedef TYPE_2__* PIMAGE_RESOURCE_DIRECTORY_ENTRY ;



__attribute__((used)) static
VOID
InitializeIdEntry(
    PTEST_RESOURCES Resource,
    PIMAGE_RESOURCE_DIRECTORY_ENTRY DirEntry,
    USHORT Id,
    PVOID Data)
{
    DirEntry->Name = Id;
    DirEntry->NameIsString = 0;
    DirEntry->OffsetToData = (PUCHAR)Data - (PUCHAR)Resource;
    if (DirEntry < Resource->Lang1Entries)
        DirEntry->DataIsDirectory = 1;
}
