
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ListEntry; scalar_t__ BitmapGlyph; } ;
typedef TYPE_1__* PFONT_CACHE_ENTRY ;
typedef int FT_Glyph ;


 int ASSERT (int) ;
 int ASSERT_FREETYPE_LOCK_HELD () ;
 int ExFreePoolWithTag (TYPE_1__*,int ) ;
 int FT_Done_Glyph (int ) ;
 scalar_t__ MAX_FONT_CACHE ;
 int RemoveEntryList (int *) ;
 int TAG_FONT ;
 scalar_t__ g_FontCacheNumEntries ;

__attribute__((used)) static void
RemoveCachedEntry(PFONT_CACHE_ENTRY Entry)
{
    ASSERT_FREETYPE_LOCK_HELD();

    FT_Done_Glyph((FT_Glyph)Entry->BitmapGlyph);
    RemoveEntryList(&Entry->ListEntry);
    ExFreePoolWithTag(Entry, TAG_FONT);
    g_FontCacheNumEntries--;
    ASSERT(g_FontCacheNumEntries <= MAX_FONT_CACHE);
}
