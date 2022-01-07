
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* Flink; } ;
struct TYPE_10__ {TYPE_1__ HistoryBuffers; } ;
struct TYPE_9__ {int ExeName; } ;
typedef int PUNICODE_STRING ;
typedef TYPE_1__* PLIST_ENTRY ;
typedef TYPE_2__* PHISTORY_BUFFER ;
typedef TYPE_3__* PCONSOLE ;


 TYPE_2__* CONTAINING_RECORD (TYPE_1__*,int ,int ) ;
 int HISTORY_BUFFER ;
 int ListEntry ;
 scalar_t__ RtlPrefixUnicodeString (int ,int *,int ) ;
 int TRUE ;

__attribute__((used)) static PHISTORY_BUFFER
HistoryFindBuffer(PCONSOLE Console, PUNICODE_STRING ExeName)
{
    PLIST_ENTRY Entry = Console->HistoryBuffers.Flink;
    while (Entry != &Console->HistoryBuffers)
    {

        PHISTORY_BUFFER Hist = CONTAINING_RECORD(Entry, HISTORY_BUFFER, ListEntry);
        if (RtlPrefixUnicodeString(ExeName, &Hist->ExeName, TRUE))
            return Hist;
        Entry = Entry->Flink;
    }
    return ((void*)0);
}
