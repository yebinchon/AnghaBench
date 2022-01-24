#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  format; } ;
typedef  TYPE_2__ VOID ;
struct TYPE_13__ {TYPE_1__* tables; int /*<<< orphan*/  numTables; } ;
struct TYPE_12__ {TYPE_5__* CMAP_Table; } ;
struct TYPE_10__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  encodingID; int /*<<< orphan*/  platformID; } ;
typedef  TYPE_3__ ScriptCache ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_2__ CMAP_SegmentedCoverage ;
typedef  TYPE_5__ CMAP_Header ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  CMAP_TAG ; 
 int GDI_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 TYPE_5__* FUNC4 (int) ; 

__attribute__((used)) static VOID *FUNC5(HDC hdc, ScriptCache *psc)
{
    CMAP_Header *CMAP_Table = NULL;
    int length;
    int i;

    if (!psc->CMAP_Table)
    {
        length = FUNC2(hdc, CMAP_TAG , 0, NULL, 0);
        if (length != GDI_ERROR)
        {
            psc->CMAP_Table = FUNC4(length);
            FUNC2(hdc, CMAP_TAG , 0, psc->CMAP_Table, length);
            FUNC3("Loaded cmap table of %i bytes\n",length);
        }
        else
            return NULL;
    }

    CMAP_Table = psc->CMAP_Table;

    for (i = 0; i < FUNC1(CMAP_Table->numTables); i++)
    {
        if ( (FUNC1(CMAP_Table->tables[i].platformID) == 3) &&
             (FUNC1(CMAP_Table->tables[i].encodingID) == 10) )
        {
            CMAP_SegmentedCoverage *format = (CMAP_SegmentedCoverage*)(((BYTE*)CMAP_Table) + FUNC0(CMAP_Table->tables[i].offset));
            if (FUNC1(format->format) == 12)
                return format;
        }
    }
    return NULL;
}