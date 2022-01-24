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
typedef  scalar_t__ HPEN ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ GDI_OBJECT_TYPE_BRUSH ; 
 int /*<<< orphan*/  GRAY_BRUSH ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  WHITE_BRUSH ; 
 int /*<<< orphan*/  hdc1 ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 

__attribute__((used)) static void
FUNC4()
{
    HPEN hpen, hpenOld;

	/* Test PEN */
	hpen = FUNC1(GRAY_BRUSH);
	hpenOld = FUNC2(hdc1, hpen);
	FUNC3(hpenOld == FUNC1(WHITE_BRUSH), "Got wrong pen.\n");
//	RTEST(pDc_Attr->hbrush == hpen);
	FUNC3(FUNC0(hpenOld) == GDI_OBJECT_TYPE_BRUSH, "wrong type.\n");
	FUNC2(hdc1, hpenOld);
}