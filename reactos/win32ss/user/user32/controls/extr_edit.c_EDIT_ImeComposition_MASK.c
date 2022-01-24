#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ composition_len; scalar_t__ selection_start; scalar_t__ selection_end; scalar_t__ composition_start; int flags; } ;
typedef  int LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HIMC ;
typedef  TYPE_1__ EDITSTATE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,int) ; 
 int EF_AFTER_WRAP ; 
 int GCS_COMPSTR ; 
 int /*<<< orphan*/  GCS_CURSORPOS ; 
 int GCS_RESULTSTR ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  empty_stringW ; 

__attribute__((used)) static void FUNC7(HWND hwnd, LPARAM CompFlag, EDITSTATE *es)
{
    HIMC hIMC;
    int cursor;

    if (es->composition_len == 0 && es->selection_start != es->selection_end)
    {
        FUNC0(es, TRUE, empty_stringW, TRUE, TRUE);
        es->composition_start = es->selection_end;
    }

    hIMC = FUNC5(hwnd);
    if (!hIMC)
        return;

    if (CompFlag & GCS_RESULTSTR)
    {
        FUNC2(hIMC, es);
        cursor = 0;
    }
    else
    {
        if (CompFlag & GCS_COMPSTR)
            FUNC1(hIMC, CompFlag, es);
        cursor = FUNC4(hIMC, GCS_CURSORPOS, 0, 0);
    }
    FUNC6(hwnd, hIMC);
    FUNC3(es, es->selection_start + cursor, es->flags & EF_AFTER_WRAP);
}