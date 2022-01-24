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
typedef  int UINT_PTR ;
typedef  scalar_t__ HDC ;
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int GDI_HANDLE_TYPE_MASK ; 
 int GDI_OBJECT_TYPE_METADC ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (scalar_t__,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

void
FUNC5(void)
{
    /* Windows does not SetLastError() on a metadc, but it doesn't seem to do anything with it */
    HDC hMetaDC;
    BYTE buffer[1000];

    hMetaDC = FUNC0(NULL);
    FUNC4(hMetaDC != 0, "CreateMetaFile failed, skipping tests.\n");
    if(!hMetaDC) return;

    FUNC4(((UINT_PTR)hMetaDC & GDI_HANDLE_TYPE_MASK) == GDI_OBJECT_TYPE_METADC, "\n");

    FUNC3(ERROR_SUCCESS);
    FUNC4(FUNC2((HANDLE)GDI_OBJECT_TYPE_METADC, 0, NULL) == 0, "\n");
    FUNC4(FUNC2((HANDLE)GDI_OBJECT_TYPE_METADC, 100, &buffer) == 0, "\n");
    FUNC4(FUNC2(hMetaDC, 0, NULL) == 0, "\n");
    FUNC4(FUNC2(hMetaDC, 1000, &buffer) == 0, "\n");
    FUNC4(FUNC1() == ERROR_SUCCESS, "got %ld\n", FUNC1());
}