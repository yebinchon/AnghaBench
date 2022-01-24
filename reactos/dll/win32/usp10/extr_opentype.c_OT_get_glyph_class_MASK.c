#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
struct TYPE_6__ {int /*<<< orphan*/  ClassFormat; int /*<<< orphan*/ * ClassValueArray; int /*<<< orphan*/  GlyphCount; int /*<<< orphan*/  StartGlyph; } ;
struct TYPE_5__ {TYPE_1__* ClassRangeRecord; int /*<<< orphan*/  ClassRangeCount; } ;
struct TYPE_4__ {int /*<<< orphan*/  Class; int /*<<< orphan*/  End; int /*<<< orphan*/  Start; } ;
typedef  TYPE_2__ OT_ClassDefFormat2 ;
typedef  TYPE_3__ OT_ClassDefFormat1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static WORD FUNC2(const void *table, WORD glyph)
{
    WORD class = 0;
    const OT_ClassDefFormat1 *cf1 = table;

    if (!table) return 0;

    if (FUNC1(cf1->ClassFormat) == 1)
    {
        if (glyph >= FUNC1(cf1->StartGlyph))
        {
            int index = glyph - FUNC1(cf1->StartGlyph);
            if (index < FUNC1(cf1->GlyphCount))
                class = FUNC1(cf1->ClassValueArray[index]);
        }
    }
    else if (FUNC1(cf1->ClassFormat) == 2)
    {
        const OT_ClassDefFormat2 *cf2 = table;
        int i, top;
        top = FUNC1(cf2->ClassRangeCount);
        for (i = 0; i < top; i++)
        {
            if (glyph >= FUNC1(cf2->ClassRangeRecord[i].Start) &&
                glyph <= FUNC1(cf2->ClassRangeRecord[i].End))
            {
                class = FUNC1(cf2->ClassRangeRecord[i].Class);
                break;
            }
        }
    }
    else
        FUNC0("Unknown Class Format %i\n",FUNC1(cf1->ClassFormat));

    return class;
}