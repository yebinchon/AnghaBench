
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_8__ {scalar_t__ NumEntries; size_t Position; TYPE_1__* Entries; } ;
struct TYPE_7__ {scalar_t__ Length; } ;
typedef TYPE_1__* PUNICODE_STRING ;
typedef TYPE_2__* PHISTORY_BUFFER ;
typedef int PCONSRV_CONSOLE ;


 TYPE_2__* HistoryCurrentBuffer (int ,TYPE_1__*) ;

VOID
HistoryGetCurrentEntry(PCONSRV_CONSOLE Console,
                       PUNICODE_STRING ExeName,
                       PUNICODE_STRING Entry)
{
    PHISTORY_BUFFER Hist = HistoryCurrentBuffer(Console, ExeName);

    if (!Hist || Hist->NumEntries == 0)
        Entry->Length = 0;
    else
        *Entry = Hist->Entries[Hist->Position];
}
