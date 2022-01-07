
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
typedef int ULONG ;
struct TYPE_3__ {scalar_t__ Reserved; scalar_t__ CodePage; int Size; scalar_t__ OffsetToData; } ;
typedef scalar_t__ PVOID ;
typedef scalar_t__ PUCHAR ;
typedef TYPE_1__* PIMAGE_RESOURCE_DATA_ENTRY ;



__attribute__((used)) static
VOID
InitializeDataEntry(
    PVOID ImageBase,
    PIMAGE_RESOURCE_DATA_ENTRY DataEntry,
    PVOID Data,
    ULONG Size)
{

    DataEntry->OffsetToData = (PUCHAR)Data - (PUCHAR)ImageBase;
    DataEntry->Size = Size;
    DataEntry->CodePage = 0;
    DataEntry->Reserved = 0;
}
