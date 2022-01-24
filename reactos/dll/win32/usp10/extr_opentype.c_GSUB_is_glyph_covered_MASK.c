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
struct TYPE_6__ {int /*<<< orphan*/  CoverageFormat; int /*<<< orphan*/ * GlyphArray; int /*<<< orphan*/  GlyphCount; } ;
struct TYPE_5__ {TYPE_1__* RangeRecord; int /*<<< orphan*/  RangeCount; } ;
struct TYPE_4__ {int /*<<< orphan*/  Start; int /*<<< orphan*/  StartCoverageIndex; int /*<<< orphan*/  End; } ;
typedef  TYPE_2__ OT_CoverageFormat2 ;
typedef  TYPE_3__ OT_CoverageFormat1 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static int FUNC3(const void *table, unsigned int glyph)
{
    const OT_CoverageFormat1* cf1;

    cf1 = table;

    if (FUNC1(cf1->CoverageFormat) == 1)
    {
        int count = FUNC1(cf1->GlyphCount);
        int i;
        FUNC2("Coverage Format 1, %i glyphs\n",count);
        for (i = 0; i < count; i++)
            if (glyph == FUNC1(cf1->GlyphArray[i]))
                return i;
        return -1;
    }
    else if (FUNC1(cf1->CoverageFormat) == 2)
    {
        const OT_CoverageFormat2* cf2;
        int i;
        int count;
        cf2 = (const OT_CoverageFormat2*)cf1;

        count = FUNC1(cf2->RangeCount);
        FUNC2("Coverage Format 2, %i ranges\n",count);
        for (i = 0; i < count; i++)
        {
            if (glyph < FUNC1(cf2->RangeRecord[i].Start))
                return -1;
            if ((glyph >= FUNC1(cf2->RangeRecord[i].Start)) &&
                (glyph <= FUNC1(cf2->RangeRecord[i].End)))
            {
                return (FUNC1(cf2->RangeRecord[i].StartCoverageIndex) +
                    glyph - FUNC1(cf2->RangeRecord[i].Start));
            }
        }
        return -1;
    }
    else
        FUNC0("Unknown CoverageFormat %i\n",FUNC1(cf1->CoverageFormat));

    return -1;
}