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
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  TLIBATTR ;
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  wszStdOle2 ; 

__attribute__((used)) static void FUNC6(void)
{
    ULONG ref1, ref2;
    TLIBATTR *attr;
    ITypeLib *tl;
    HRESULT hr;

    hr = FUNC4(wszStdOle2, &tl);
    FUNC5(hr == S_OK, "got 0x%08x\n", hr);

    ref1 = FUNC0(tl);
    FUNC2(tl);

    hr = FUNC1(tl, &attr);
    FUNC5(hr == S_OK, "got 0x%08x\n", hr);

    ref2 = FUNC0(tl);
    FUNC2(tl);
    FUNC5(ref2 == ref1, "got %d, %d\n", ref2, ref1);

    FUNC3(tl, attr);
    FUNC2(tl);
}