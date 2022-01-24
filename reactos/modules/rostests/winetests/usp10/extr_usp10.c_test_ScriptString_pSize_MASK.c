#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tm ;
typedef  char WCHAR ;
struct TYPE_10__ {scalar_t__ abcA; scalar_t__ abcB; scalar_t__ abcC; } ;
struct TYPE_9__ {scalar_t__ cx; scalar_t__ cy; } ;
struct TYPE_8__ {scalar_t__ tmHeight; } ;
typedef  TYPE_1__ TEXTMETRICW ;
typedef  TYPE_2__ SIZE ;
typedef  int /*<<< orphan*/ * SCRIPT_STRING_ANALYSIS ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  TYPE_3__ ABC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const,char const,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  SSA_GLYPHS ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ **) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 

__attribute__((used)) static void FUNC8(HDC hdc)
{
    static const WCHAR textW[] = {'A',0};
    SCRIPT_STRING_ANALYSIS ssa;
    const SIZE *size;
    TEXTMETRICW tm;
    HRESULT hr;
    ABC abc;

    hr = FUNC2(hdc, textW, 1, 16, -1, SSA_GLYPHS, 0, NULL, NULL, NULL, NULL, NULL, &ssa);
    FUNC7(hr == S_OK, "ScriptStringAnalyse failed, hr %#x.\n", hr);

    size = FUNC4(NULL);
    FUNC7(size == NULL || FUNC5(size != NULL) /* <win7 */, "Unexpected size pointer.\n");

    FUNC0(hdc, textW[0], textW[0], &abc);

    FUNC6(&tm, 0, sizeof(tm));
    FUNC1(hdc, &tm);
    FUNC7(tm.tmHeight > 0, "Unexpected tmHeight.\n");

    size = FUNC4(ssa);
    FUNC7(size != NULL, "Unexpected size pointer.\n");
    FUNC7(size->cx == abc.abcA + abc.abcB + abc.abcC, "Unexpected cx size %d.\n", size->cx);
    FUNC7(size->cy == tm.tmHeight, "Unexpected cy size %d.\n", size->cy);

    hr = FUNC3(&ssa);
    FUNC7(hr == S_OK, "Failed to free ssa, hr %#x.\n", hr);
}