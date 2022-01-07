
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
typedef int VOID ;
typedef int USHORT ;
struct TYPE_5__ {int* Buffer; int Length; int MaximumLength; } ;
typedef int* PWCHAR ;
typedef TYPE_1__* PUNICODE_STRING ;


 int ASSERT (int) ;

VOID
vfatSplitPathName(
    PUNICODE_STRING PathNameU,
    PUNICODE_STRING DirNameU,
    PUNICODE_STRING FileNameU)
{
    PWCHAR pName;
    USHORT Length = 0;
    pName = PathNameU->Buffer + PathNameU->Length / sizeof(WCHAR) - 1;
    while (*pName != L'\\' && pName >= PathNameU->Buffer)
    {
        pName--;
        Length++;
    }
    ASSERT(*pName == L'\\' || pName < PathNameU->Buffer);
    if (FileNameU)
    {
        FileNameU->Buffer = pName + 1;
        FileNameU->Length = FileNameU->MaximumLength = Length * sizeof(WCHAR);
    }
    if (DirNameU)
    {
        DirNameU->Buffer = PathNameU->Buffer;
        DirNameU->Length = (pName + 1 - PathNameU->Buffer) * sizeof(WCHAR);
        DirNameU->MaximumLength = DirNameU->Length;
    }
}
