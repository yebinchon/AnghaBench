#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {int otmSize; int /*<<< orphan*/  otmfsSelection; } ;
typedef  TYPE_1__ OUTLINETEXTMETRICA ;
typedef  int /*<<< orphan*/  LOGFONTA ;
typedef  int /*<<< orphan*/ * HFONT ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 

__attribute__((used)) static UINT FUNC11(LOGFONTA *lf)
{
    OUTLINETEXTMETRICA *otm;
    HFONT hfont, hfont_old;
    DWORD ret, otm_size;
    UINT fsSelection;
    HDC hdc;

    hdc = FUNC2(0);
    hfont = FUNC0(lf);
    FUNC10(hfont != NULL, "failed to create a font\n");

    hfont_old = FUNC9(hdc, hfont);

    otm_size = FUNC4(hdc, 0, NULL);
    otm = FUNC6(FUNC5(), 0, otm_size);
    otm->otmSize = sizeof(*otm);
    ret = FUNC4(hdc, otm->otmSize, otm);
    FUNC10(ret == otm->otmSize, "expected %u, got %u, error %d\n", otm->otmSize, ret, FUNC3());
    fsSelection = otm->otmfsSelection;
    FUNC7(FUNC5(), 0, otm);
    FUNC9(hdc, hfont_old);
    FUNC1(hfont);
    FUNC8(0, hdc);

    return fsSelection;
}