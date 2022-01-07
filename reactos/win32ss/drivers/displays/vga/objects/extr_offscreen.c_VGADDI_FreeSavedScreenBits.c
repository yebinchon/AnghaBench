
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_7__ {int * Flink; int * Blink; } ;
struct TYPE_6__ {TYPE_3__ ListEntry; scalar_t__ Size; scalar_t__ Free; } ;
typedef TYPE_1__* PSAVED_SCREEN_BITS ;


 TYPE_1__* CONTAINING_RECORD (int *,int ,int ) ;
 int EngFreeMem (TYPE_1__*) ;
 int ListEntry ;
 int RemoveEntryList (TYPE_3__*) ;
 int SAVED_SCREEN_BITS ;
 int SavedBitsList ;
 scalar_t__ TRUE ;

VOID
VGADDI_FreeSavedScreenBits(PSAVED_SCREEN_BITS SavedBits)
{
    SavedBits->Free = TRUE;

    if (SavedBits->ListEntry.Blink != &SavedBitsList)
    {
        PSAVED_SCREEN_BITS Previous;

        Previous = CONTAINING_RECORD(SavedBits->ListEntry.Blink,
                                     SAVED_SCREEN_BITS, ListEntry);
        if (Previous->Free)
        {
            Previous->Size += SavedBits->Size;
            RemoveEntryList(&SavedBits->ListEntry);
            EngFreeMem(SavedBits);
            SavedBits = Previous;
        }
    }
    if (SavedBits->ListEntry.Flink != &SavedBitsList)
    {
        PSAVED_SCREEN_BITS Next;

        Next = CONTAINING_RECORD(SavedBits->ListEntry.Flink, SAVED_SCREEN_BITS,
                                 ListEntry);
        if (Next->Free)
        {
            SavedBits->Size += Next->Size;
            RemoveEntryList(&SavedBits->ListEntry);
            EngFreeMem(SavedBits);
        }
    }
}
