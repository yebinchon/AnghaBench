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
struct TYPE_4__ {scalar_t__ ScriptId; scalar_t__ uiCodePage; int /*<<< orphan*/  wszProportionalFont; int /*<<< orphan*/  wszFixedWidthFont; int /*<<< orphan*/  wszDescription; } ;
typedef  TYPE_1__ SCRIPTINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 

__attribute__((used)) static void FUNC2(SCRIPTINFO *sinfo1, SCRIPTINFO *sinfo2)
{
    FUNC1(sinfo1->ScriptId == sinfo2->ScriptId, "ScriptId mismatch: %d != %d\n", sinfo1->ScriptId, sinfo2->ScriptId);
    FUNC1(sinfo1->uiCodePage == sinfo2->uiCodePage, "uiCodePage mismatch: %u != %u\n", sinfo1->uiCodePage, sinfo2->uiCodePage);
    FUNC1(!FUNC0(sinfo1->wszDescription, sinfo2->wszDescription), "wszDescription mismatch\n");
    FUNC1(!FUNC0(sinfo1->wszFixedWidthFont, sinfo2->wszFixedWidthFont), "wszFixedWidthFont mismatch\n");
    FUNC1(!FUNC0(sinfo1->wszProportionalFont, sinfo2->wszProportionalFont), "wszProportionalFont mismatch\n");
}