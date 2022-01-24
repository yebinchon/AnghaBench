#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  ListEntry; scalar_t__ BitmapGlyph; } ;
typedef  TYPE_1__* PFONT_CACHE_ENTRY ;
typedef  int /*<<< orphan*/  FT_Glyph ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ MAX_FONT_CACHE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TAG_FONT ; 
 scalar_t__ g_FontCacheNumEntries ; 

__attribute__((used)) static void
FUNC5(PFONT_CACHE_ENTRY Entry)
{
    FUNC1();

    FUNC3((FT_Glyph)Entry->BitmapGlyph);
    FUNC4(&Entry->ListEntry);
    FUNC2(Entry, TAG_FONT);
    g_FontCacheNumEntries--;
    FUNC0(g_FontCacheNumEntries <= MAX_FONT_CACHE);
}