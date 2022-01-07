
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_7__ {struct TYPE_7__* Next; struct TYPE_7__* Data; } ;
struct TYPE_6__ {TYPE_2__* Aliases; } ;
typedef TYPE_1__* PCONSRV_CONSOLE ;
typedef TYPE_2__* PALIAS_HEADER ;
typedef TYPE_2__* PALIAS_ENTRY ;


 int ConsoleFreeHeap (TYPE_2__*) ;

VOID
IntDeleteAllAliases(PCONSRV_CONSOLE Console)
{
    PALIAS_HEADER Header, NextHeader;
    PALIAS_ENTRY Entry, NextEntry;

    for (Header = Console->Aliases; Header; Header = NextHeader)
    {
        NextHeader = Header->Next;
        for (Entry = Header->Data; Entry; Entry = NextEntry)
        {
            NextEntry = Entry->Next;
            ConsoleFreeHeap(Entry);
        }
        ConsoleFreeHeap(Header);
    }
}
