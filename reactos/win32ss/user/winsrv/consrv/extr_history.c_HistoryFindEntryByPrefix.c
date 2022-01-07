
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ LineUpPressed; } ;
struct TYPE_6__ {scalar_t__ NumEntries; scalar_t__ Position; int * Entries; } ;
typedef int * PUNICODE_STRING ;
typedef TYPE_1__* PHISTORY_BUFFER ;
typedef TYPE_2__* PCONSRV_CONSOLE ;
typedef size_t INT ;
typedef scalar_t__ BOOL ;


 scalar_t__ FALSE ;
 TYPE_1__* HistoryCurrentBuffer (TYPE_2__*,int *) ;
 scalar_t__ RtlPrefixUnicodeString (int *,int *,scalar_t__) ;
 scalar_t__ TRUE ;

BOOL
HistoryFindEntryByPrefix(PCONSRV_CONSOLE Console,
                         PUNICODE_STRING ExeName,
                         PUNICODE_STRING Prefix,
                         PUNICODE_STRING Entry)
{
    INT HistPos;


    PHISTORY_BUFFER Hist = HistoryCurrentBuffer(Console, ExeName);
    if (!Hist || Hist->NumEntries == 0) return FALSE;





    if (Console->LineUpPressed)
        Hist->Position = (Hist->Position ? Hist->Position : Hist->NumEntries) - 1;
    Console->LineUpPressed = TRUE;
    HistPos = Hist->Position;
    do
    {
        if (RtlPrefixUnicodeString(Prefix, &Hist->Entries[HistPos], FALSE))
        {
            Hist->Position = HistPos;
            *Entry = Hist->Entries[HistPos];
            return TRUE;
        }
        if (--HistPos < 0) HistPos += Hist->NumEntries;
    } while (HistPos != Hist->Position);

    return FALSE;
}
