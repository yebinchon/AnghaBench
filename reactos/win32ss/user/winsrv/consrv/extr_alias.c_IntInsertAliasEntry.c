
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_6__ {struct TYPE_6__* Next; int Source; } ;
struct TYPE_5__ {TYPE_2__* Data; } ;
typedef TYPE_1__* PALIAS_HEADER ;
typedef TYPE_2__* PALIAS_ENTRY ;
typedef scalar_t__ INT ;


 scalar_t__ RtlCompareUnicodeString (int *,int *,int ) ;
 int TRUE ;

__attribute__((used)) static VOID
IntInsertAliasEntry(PALIAS_HEADER Header,
                    PALIAS_ENTRY NewEntry)
{
    PALIAS_ENTRY CurrentEntry;
    PALIAS_ENTRY *LastLink = &Header->Data;
    INT Diff;

    while ((CurrentEntry = *LastLink) != ((void*)0))
    {
        Diff = RtlCompareUnicodeString(&NewEntry->Source, &CurrentEntry->Source, TRUE);
        if (Diff < 0) break;

        LastLink = &CurrentEntry->Next;
    }

    *LastLink = NewEntry;
    NewEntry->Next = CurrentEntry;
}
