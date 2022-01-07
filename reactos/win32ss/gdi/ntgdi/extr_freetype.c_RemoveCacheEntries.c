
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ Face; } ;
struct TYPE_7__ {struct TYPE_7__* Flink; } ;
typedef TYPE_1__* PLIST_ENTRY ;
typedef TYPE_2__* PFONT_CACHE_ENTRY ;
typedef scalar_t__ FT_Face ;


 int ASSERT_FREETYPE_LOCK_HELD () ;
 TYPE_2__* CONTAINING_RECORD (TYPE_1__*,int ,int ) ;
 int FONT_CACHE_ENTRY ;
 int ListEntry ;
 int RemoveCachedEntry (TYPE_2__*) ;
 TYPE_1__ g_FontCacheListHead ;

__attribute__((used)) static void
RemoveCacheEntries(FT_Face Face)
{
    PLIST_ENTRY CurrentEntry, NextEntry;
    PFONT_CACHE_ENTRY FontEntry;

    ASSERT_FREETYPE_LOCK_HELD();

    for (CurrentEntry = g_FontCacheListHead.Flink;
         CurrentEntry != &g_FontCacheListHead;
         CurrentEntry = NextEntry)
    {
        FontEntry = CONTAINING_RECORD(CurrentEntry, FONT_CACHE_ENTRY, ListEntry);
        NextEntry = CurrentEntry->Flink;

        if (FontEntry->Face == Face)
        {
            RemoveCachedEntry(FontEntry);
        }
    }
}
