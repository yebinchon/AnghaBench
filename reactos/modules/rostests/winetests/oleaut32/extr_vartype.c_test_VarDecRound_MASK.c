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
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DECIMAL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DECIMAL_NEG ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void)
{
    HRESULT hres;
    DECIMAL l, out;

    FUNC0(out); FUNC3(l, 0, 0, 0, 1); hres = FUNC5(&l, 3, &out); FUNC1(0, 0, 0, 1);

    FUNC0(out); FUNC3(l, 0, 0, 0, 1); hres = FUNC5(&l, 0, &out); FUNC1(0, 0, 0, 1);
    FUNC0(out); FUNC3(l, 1, 0, 0, 1); hres = FUNC5(&l, 0, &out); FUNC1(0, 0, 0, 0);
    FUNC0(out); FUNC3(l, 1, 0, 0, 1); hres = FUNC5(&l, 1, &out); FUNC1(1, 0, 0, 1);
    FUNC0(out); FUNC3(l, 2, 0, 0, 11); hres = FUNC5(&l, 1, &out); FUNC1(1, 0, 0, 1);
    FUNC0(out); FUNC3(l, 2, 0, 0, 15); hres = FUNC5(&l, 1, &out); FUNC1(1, 0, 0, 2);
    FUNC0(out); FUNC3(l, 6, 0, 0, 550001); hres = FUNC5(&l, 1, &out); FUNC1(1, 0, 0, 6);

    FUNC0(out); FUNC3(l, 0, DECIMAL_NEG, 0, 1); hres = FUNC5(&l, 0, &out); FUNC1(0, DECIMAL_NEG, 0, 1);
    FUNC0(out); FUNC3(l, 1, DECIMAL_NEG, 0, 1); hres = FUNC5(&l, 0, &out); FUNC1(0, DECIMAL_NEG, 0, 0);
    FUNC0(out); FUNC3(l, 1, DECIMAL_NEG, 0, 1); hres = FUNC5(&l, 1, &out); FUNC1(1, DECIMAL_NEG, 0, 1);
    FUNC0(out); FUNC3(l, 2, DECIMAL_NEG, 0, 11); hres = FUNC5(&l, 1, &out); FUNC1(1, DECIMAL_NEG, 0, 1);
    FUNC0(out); FUNC3(l, 2, DECIMAL_NEG, 0, 15); hres = FUNC5(&l, 1, &out); FUNC1(1, DECIMAL_NEG, 0, 2);
    FUNC0(out); FUNC3(l, 6, DECIMAL_NEG, 0, 550001); hres = FUNC5(&l, 1, &out); FUNC1(1, DECIMAL_NEG, 0, 6);

    FUNC0(out); FUNC4(l, 0, 0, 0xffffffff, 0xffffffff, 0xffffffff); hres = FUNC5(&l, 0, &out); FUNC2(0, 0, 0xffffffff, 0xffffffff, 0xffffffff);
    FUNC0(out); FUNC4(l, 28, 0, 0xffffffff, 0xffffffff, 0xffffffff); hres = FUNC5(&l, 0, &out); FUNC2(0, 0, 0, 0, 8);
    FUNC0(out); FUNC4(l, 0, DECIMAL_NEG, 0xffffffff, 0xffffffff, 0xffffffff); hres = FUNC5(&l, 0, &out); FUNC2(0, DECIMAL_NEG, 0xffffffff, 0xffffffff, 0xffffffff);
    FUNC0(out); FUNC4(l, 28, DECIMAL_NEG, 0xffffffff, 0xffffffff, 0xffffffff); hres = FUNC5(&l, 0, &out); FUNC2(0, DECIMAL_NEG, 0, 0, 8);

    FUNC0(out); FUNC3(l, 2, 0, 0, 0); hres = FUNC5(&l, 1, &out); FUNC1(1, 0, 0, 0);
}