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
typedef  int /*<<< orphan*/  HMODULE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  GetRelAbs ; 
 int /*<<< orphan*/  SetDCBrushColor ; 
 int /*<<< orphan*/  SetDCPenColor ; 
 int /*<<< orphan*/  SetRelAbs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pGetRelAbs ; 
 int /*<<< orphan*/ * pSetRelAbs ; 

__attribute__((used)) static void FUNC3(void)
{
    HMODULE hGDI;

    pGetRelAbs = NULL;
    pSetRelAbs = NULL;

    hGDI = FUNC1("gdi32.dll");
    FUNC2(hGDI);
    FUNC0(GetRelAbs);
    FUNC0(SetRelAbs);
    FUNC0(SetDCBrushColor);
    FUNC0(SetDCPenColor);
}