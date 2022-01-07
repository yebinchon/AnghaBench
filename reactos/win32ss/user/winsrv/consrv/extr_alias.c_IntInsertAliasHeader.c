
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {struct TYPE_4__* Next; int ExeName; } ;
typedef TYPE_1__* PALIAS_HEADER ;
typedef scalar_t__ INT ;


 scalar_t__ RtlCompareUnicodeString (int *,int *,int ) ;
 int TRUE ;

__attribute__((used)) static VOID
IntInsertAliasHeader(PALIAS_HEADER* RootHeader,
                     PALIAS_HEADER NewHeader)
{
    PALIAS_HEADER CurrentHeader;
    PALIAS_HEADER *LastLink = RootHeader;
    INT Diff;

    while ((CurrentHeader = *LastLink) != ((void*)0))
    {
        Diff = RtlCompareUnicodeString(&NewHeader->ExeName, &CurrentHeader->ExeName, TRUE);
        if (Diff < 0) break;

        LastLink = &CurrentHeader->Next;
    }

    *LastLink = NewHeader;
    NewHeader->Next = CurrentHeader;
}
