
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
struct TYPE_7__ {int * Buffer; scalar_t__ Length; scalar_t__ MaximumLength; } ;
typedef TYPE_1__ UNICODE_STRING ;
struct TYPE_9__ {scalar_t__ MaximumLength; scalar_t__ Length; scalar_t__ Buffer; } ;
struct TYPE_8__ {int * Next; int * Data; TYPE_3__ ExeName; } ;
typedef scalar_t__ PWSTR ;
typedef int * PVOID ;
typedef int PCONSRV_CONSOLE ;
typedef TYPE_2__* PALIAS_HEADER ;
typedef scalar_t__ BOOLEAN ;
typedef int ALIAS_HEADER ;


 TYPE_2__* ConsoleAllocHeap (int ,scalar_t__) ;
 int ConsoleFreeHeap (int *) ;
 int ConvertInputAnsiToUnicode (int ,int *,scalar_t__,int **,scalar_t__*) ;
 int RtlCopyUnicodeString (TYPE_3__*,TYPE_1__*) ;

__attribute__((used)) static PALIAS_HEADER
IntCreateAliasHeader(PCONSRV_CONSOLE Console,
                     PVOID ExeName,
                     USHORT ExeLength,
                     BOOLEAN UnicodeExe)
{
    UNICODE_STRING ExeNameU;

    PALIAS_HEADER Entry;

    if (ExeName == ((void*)0)) return ((void*)0);

    if (UnicodeExe)
    {
        ExeNameU.Buffer = ExeName;

        ExeNameU.MaximumLength = ExeLength;
    }
    else
    {
        if (!ConvertInputAnsiToUnicode(Console,
                                       ExeName, ExeLength,
                                       &ExeNameU.Buffer, &ExeNameU.MaximumLength))
        {
            return ((void*)0);
        }
    }
    ExeNameU.Length = ExeNameU.MaximumLength;

    Entry = ConsoleAllocHeap(0, sizeof(ALIAS_HEADER) + ExeNameU.Length);
    if (!Entry)
    {
        if (!UnicodeExe) ConsoleFreeHeap(ExeNameU.Buffer);
        return Entry;
    }

    Entry->ExeName.Buffer = (PWSTR)(Entry + 1);
    Entry->ExeName.Length = 0;
    Entry->ExeName.MaximumLength = ExeNameU.Length;
    RtlCopyUnicodeString(&Entry->ExeName, &ExeNameU);

    Entry->Data = ((void*)0);
    Entry->Next = ((void*)0);

    if (!UnicodeExe) ConsoleFreeHeap(ExeNameU.Buffer);
    return Entry;
}
