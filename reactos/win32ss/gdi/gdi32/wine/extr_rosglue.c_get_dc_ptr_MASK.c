#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  WINEDC ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 scalar_t__ GDILoObjType_LO_ALTDC_TYPE ; 
 scalar_t__ GDILoObjType_LO_METADC16_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

WINEDC*
FUNC3(HDC hdc)
{
    /* Check for EMF DC */
    if (FUNC0(hdc) == GDILoObjType_LO_ALTDC_TYPE)
    {
        /* The Wine DC is stored as the LDC */
        return (WINEDC*)FUNC2(hdc);
    }

    /* Check for METADC16 */
    if (FUNC0(hdc) == GDILoObjType_LO_METADC16_TYPE)
    {
        return FUNC1(hdc);
    }

    return NULL;
}