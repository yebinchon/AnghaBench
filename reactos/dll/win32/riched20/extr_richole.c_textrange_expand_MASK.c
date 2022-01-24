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
typedef  int LONG ;
typedef  int /*<<< orphan*/  ITextRange ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  S_OK ; 
#define  tomStory 128 

__attribute__((used)) static HRESULT FUNC6(ITextRange *range, LONG unit, LONG *delta)
{
    LONG expand_start, expand_end;

    switch (unit)
    {
    case tomStory:
        expand_start = 0;
        FUNC3(range, &expand_end);
        break;
    default:
        FUNC0("unit %d is not supported\n", unit);
        return E_NOTIMPL;
    }

    if (delta) {
        LONG start, end;

        FUNC2(range, &start);
        FUNC1(range, &end);
        *delta = expand_end - expand_start - (end - start);
    }

    FUNC5(range, expand_start);
    FUNC4(range, expand_end);

    return S_OK;
}