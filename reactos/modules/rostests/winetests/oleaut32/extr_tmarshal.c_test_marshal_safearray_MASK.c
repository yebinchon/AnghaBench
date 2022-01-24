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
typedef  int /*<<< orphan*/  SAFEARRAY ;
typedef  int /*<<< orphan*/  IWidget ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 

__attribute__((used)) static void FUNC5(IWidget *widget, IDispatch *disp)
{
    SAFEARRAY *in, *out, *out2, *in_ptr, *in_out;
    HRESULT hr;

    in = FUNC3(3);
    out = out2 = FUNC3(5);
    in_ptr = FUNC3(7);
    in_out = FUNC3(9);
    hr = FUNC0(widget, in, &out, &in_ptr, &in_out);
    FUNC4(hr == S_OK, "Got hr %#x.\n", hr);
    FUNC2(in, 3);
    FUNC2(out, 4);
    FUNC2(out2, 5);
    FUNC2(in_ptr, 7);
    FUNC2(in_out, 6);

    FUNC1(in);
    FUNC1(out);
    FUNC1(out2);
    FUNC1(in_ptr);
    FUNC1(in_out);
}