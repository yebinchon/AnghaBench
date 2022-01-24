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
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  MYSTRUCT ;
typedef  int /*<<< orphan*/  IWidget ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  test_mystruct1 ; 
 int /*<<< orphan*/  test_mystruct2 ; 
 int /*<<< orphan*/  test_mystruct3 ; 
 int /*<<< orphan*/  test_mystruct4 ; 
 int /*<<< orphan*/  test_mystruct5 ; 
 int /*<<< orphan*/  test_mystruct7 ; 
 int /*<<< orphan*/  test_rect1 ; 
 int /*<<< orphan*/  test_rect2 ; 
 int /*<<< orphan*/  test_rect3 ; 
 int /*<<< orphan*/  test_rect4 ; 
 int /*<<< orphan*/  test_rect5 ; 
 int /*<<< orphan*/  test_rect7 ; 
 int /*<<< orphan*/  test_thin_struct ; 

__attribute__((used)) static void FUNC8(IWidget *widget, IDispatch *disp)
{
    MYSTRUCT out, in_ptr, in_out, *in_ptr_ptr;
    RECT rect_out, rect_in_ptr, rect_in_out;
    HRESULT hr;

    FUNC6(&out, &test_mystruct2, sizeof(MYSTRUCT));
    FUNC6(&in_ptr, &test_mystruct3, sizeof(MYSTRUCT));
    FUNC6(&in_out, &test_mystruct4, sizeof(MYSTRUCT));
    hr = FUNC1(widget, test_mystruct1, &out, &in_ptr, &in_out);
    FUNC7(hr == S_OK, "Got hr %#x.\n", hr);
    FUNC7(!FUNC5(&out, &test_mystruct5, sizeof(MYSTRUCT)), "Structs didn't match.\n");
    FUNC7(!FUNC5(&in_ptr, &test_mystruct3, sizeof(MYSTRUCT)), "Structs didn't match.\n");
    FUNC7(!FUNC5(&in_out, &test_mystruct7, sizeof(MYSTRUCT)), "Structs didn't match.\n");

    FUNC6(&in_ptr, &test_mystruct1, sizeof(MYSTRUCT));
    in_ptr_ptr = &in_ptr;
    hr = FUNC2(widget, &in_ptr_ptr);
    FUNC7(hr == S_OK, "Got hr %#x.\n", hr);

    /* Make sure that "thin" structs (<=8 bytes) are handled correctly in x86-64. */

    hr = FUNC4(widget, test_thin_struct);
    FUNC7(hr == S_OK, "Got hr %#x.\n", hr);

    /* Make sure we can handle an imported type. */

    rect_out = test_rect2;
    rect_in_ptr = test_rect3;
    rect_in_out = test_rect4;
    hr = FUNC3(widget, test_rect1, &rect_out, &rect_in_ptr, &rect_in_out);
    FUNC7(hr == S_OK, "Got hr %#x.\n", hr);
    FUNC7(FUNC0(&rect_out, &test_rect5), "Rects didn't match.\n");
    FUNC7(FUNC0(&rect_in_ptr, &test_rect3), "Rects didn't match.\n");
    FUNC7(FUNC0(&rect_in_out, &test_rect7), "Rects didn't match.\n");
}