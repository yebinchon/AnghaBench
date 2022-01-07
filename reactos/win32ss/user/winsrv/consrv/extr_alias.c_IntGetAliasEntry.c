
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_7__ {int * Buffer; int MaximumLength; int Length; } ;
typedef TYPE_1__ UNICODE_STRING ;
struct TYPE_9__ {struct TYPE_9__* Next; int Source; } ;
struct TYPE_8__ {TYPE_3__* Data; } ;
typedef int * PVOID ;
typedef int PCONSRV_CONSOLE ;
typedef TYPE_2__* PALIAS_HEADER ;
typedef TYPE_3__* PALIAS_ENTRY ;
typedef scalar_t__ INT ;
typedef scalar_t__ BOOLEAN ;


 int ConsoleFreeHeap (int *) ;
 int ConvertInputAnsiToUnicode (int ,int *,int ,int **,int *) ;
 scalar_t__ RtlCompareUnicodeString (int *,TYPE_1__*,int ) ;
 int TRUE ;

__attribute__((used)) static PALIAS_ENTRY
IntGetAliasEntry(PCONSRV_CONSOLE Console,
                 PALIAS_HEADER Header,
                 PVOID Source,
                 USHORT SourceLength,
                 BOOLEAN Unicode)
{
    UNICODE_STRING SourceU;

    PALIAS_ENTRY Entry;
    INT Diff;

    if (Header == ((void*)0) || Source == ((void*)0)) return ((void*)0);

    if (Unicode)
    {
        SourceU.Buffer = Source;

        SourceU.MaximumLength = SourceLength;
    }
    else
    {
        if (!ConvertInputAnsiToUnicode(Console,
                                       Source, SourceLength,
                                       &SourceU.Buffer, &SourceU.MaximumLength))
        {
            return ((void*)0);
        }
    }
    SourceU.Length = SourceU.MaximumLength;

    Entry = Header->Data;
    while (Entry)
    {
        Diff = RtlCompareUnicodeString(&Entry->Source, &SourceU, TRUE);
        if (!Diff)
        {
            if (!Unicode) ConsoleFreeHeap(SourceU.Buffer);
            return Entry;
        }
        if (Diff > 0) break;

        Entry = Entry->Next;
    }

    if (!Unicode) ConsoleFreeHeap(SourceU.Buffer);
    return ((void*)0);
}
