
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_11__ {int * Buffer; int MaximumLength; int Length; } ;
typedef TYPE_1__ UNICODE_STRING ;
struct TYPE_12__ {struct TYPE_12__* Flink; } ;
struct TYPE_14__ {TYPE_2__ HistoryBuffers; } ;
struct TYPE_13__ {int ExeName; } ;
typedef int * PVOID ;
typedef TYPE_2__* PLIST_ENTRY ;
typedef TYPE_3__* PHISTORY_BUFFER ;
typedef TYPE_4__* PCONSRV_CONSOLE ;
typedef scalar_t__ BOOLEAN ;


 TYPE_3__* CONTAINING_RECORD (TYPE_2__*,int ,int ) ;
 int ConsoleFreeHeap (int *) ;
 int ConvertInputAnsiToUnicode (TYPE_4__*,int *,int ,int **,int *) ;
 int HISTORY_BUFFER ;
 int ListEntry ;
 scalar_t__ RtlPrefixUnicodeString (TYPE_1__*,int *,int ) ;
 int TRUE ;

__attribute__((used)) static PHISTORY_BUFFER
HistoryFindBuffer(PCONSRV_CONSOLE Console,
                  PVOID ExeName,
                  USHORT ExeLength,
                  BOOLEAN UnicodeExe)
{
    UNICODE_STRING ExeNameU;

    PLIST_ENTRY Entry;
    PHISTORY_BUFFER Hist = ((void*)0);

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

    Entry = Console->HistoryBuffers.Flink;
    while (Entry != &Console->HistoryBuffers)
    {
        Hist = CONTAINING_RECORD(Entry, HISTORY_BUFFER, ListEntry);


        if (RtlPrefixUnicodeString(&ExeNameU, &Hist->ExeName, TRUE))
        {
            if (!UnicodeExe) ConsoleFreeHeap(ExeNameU.Buffer);
            return Hist;
        }

        Entry = Entry->Flink;
    }

    if (!UnicodeExe) ConsoleFreeHeap(ExeNameU.Buffer);
    return ((void*)0);
}
