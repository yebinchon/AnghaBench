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
typedef  int /*<<< orphan*/  afc ;
typedef  int /*<<< orphan*/  WAVEFORMATEX ;
struct TYPE_3__ {int cbStruct; int /*<<< orphan*/ * pwfx; int /*<<< orphan*/  member_0; } ;
typedef  scalar_t__ MMRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_1__ ACMFORMATCHOOSEW ;

/* Variables and functions */
 int /*<<< orphan*/  ACM_METRIC_MAX_SIZE_FORMAT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ MMSYSERR_INVALPARAM ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC6(void)
{
    ACMFORMATCHOOSEW afc = {0};
    WAVEFORMATEX *pwfx;
    DWORD sizeMax;
    MMRESULT rc;

    FUNC4(NULL, ACM_METRIC_MAX_SIZE_FORMAT, &sizeMax);
    pwfx = FUNC1(FUNC0(), HEAP_ZERO_MEMORY, sizeMax);

    afc.cbStruct = sizeof(afc);
    afc.pwfx = pwfx;

    /* test invalid struct size */
    afc.cbStruct = sizeof(afc)-1;
    rc = FUNC3(&afc);
    FUNC5(rc == MMSYSERR_INVALPARAM, "expected 0xb, got 0x%x\n", rc);
    afc.cbStruct = sizeof(afc);

    afc.pwfx = NULL;
    rc = FUNC3(&afc);
    FUNC5(rc == MMSYSERR_INVALPARAM, "expected 0xb, got 0x%x\n", rc);
    afc.pwfx = pwfx;

    FUNC2(FUNC0(), 0, pwfx);
}