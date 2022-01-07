
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_8__ {int * Buffer; int MaximumLength; int Length; } ;
typedef TYPE_1__ UNICODE_STRING ;
struct TYPE_10__ {struct TYPE_10__* Next; int ExeName; } ;
struct TYPE_9__ {TYPE_3__* Aliases; } ;
typedef int * PVOID ;
typedef TYPE_2__* PCONSRV_CONSOLE ;
typedef TYPE_3__* PALIAS_HEADER ;
typedef scalar_t__ INT ;
typedef scalar_t__ BOOLEAN ;


 int ConsoleFreeHeap (int *) ;
 int ConvertInputAnsiToUnicode (TYPE_2__*,int *,int ,int **,int *) ;
 scalar_t__ RtlCompareUnicodeString (int *,TYPE_1__*,int ) ;
 int TRUE ;

__attribute__((used)) static PALIAS_HEADER
IntFindAliasHeader(PCONSRV_CONSOLE Console,
                   PVOID ExeName,
                   USHORT ExeLength,
                   BOOLEAN UnicodeExe)
{
    UNICODE_STRING ExeNameU;

    PALIAS_HEADER RootHeader = Console->Aliases;
    INT Diff;

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

    while (RootHeader)
    {
        Diff = RtlCompareUnicodeString(&RootHeader->ExeName, &ExeNameU, TRUE);
        if (!Diff)
        {
            if (!UnicodeExe) ConsoleFreeHeap(ExeNameU.Buffer);
            return RootHeader;
        }
        if (Diff > 0) break;

        RootHeader = RootHeader->Next;
    }

    if (!UnicodeExe) ConsoleFreeHeap(ExeNameU.Buffer);
    return ((void*)0);
}
