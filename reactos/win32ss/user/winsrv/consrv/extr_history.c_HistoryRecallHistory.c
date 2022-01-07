
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t ULONG ;
struct TYPE_3__ {scalar_t__ NumEntries; size_t Position; int * Entries; } ;
typedef int * PUNICODE_STRING ;
typedef TYPE_1__* PHISTORY_BUFFER ;
typedef int PCONSRV_CONSOLE ;
typedef size_t INT ;
typedef int BOOL ;


 int FALSE ;
 TYPE_1__* HistoryCurrentBuffer (int ,int *) ;
 int TRUE ;
 int max (size_t,int ) ;
 size_t min (int ,scalar_t__) ;

BOOL
HistoryRecallHistory(PCONSRV_CONSOLE Console,
                     PUNICODE_STRING ExeName,
                     INT Offset,
                     PUNICODE_STRING Entry)
{
    PHISTORY_BUFFER Hist = HistoryCurrentBuffer(Console, ExeName);
    ULONG Position = 0;

    if (!Hist || Hist->NumEntries == 0) return FALSE;

    Position = Hist->Position + Offset;
    Position = min(max(Position, 0), Hist->NumEntries - 1);
    Hist->Position = Position;

    *Entry = Hist->Entries[Hist->Position];
    return TRUE;
}
