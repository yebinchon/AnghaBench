#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {scalar_t__ GDEF_Table; scalar_t__ GPOS_Table; scalar_t__ GSUB_Table; } ;
typedef  TYPE_1__ ScriptCache ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static VOID FUNC3(HDC hdc, ScriptCache *psc)
{
    if (!psc->GSUB_Table)
        psc->GSUB_Table = FUNC2(hdc);
    if (!psc->GPOS_Table)
        psc->GPOS_Table = FUNC1(hdc);
    if (!psc->GDEF_Table)
        psc->GDEF_Table = FUNC0(hdc);
}