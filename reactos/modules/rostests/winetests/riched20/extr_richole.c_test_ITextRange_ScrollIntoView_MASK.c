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
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  ITextRange ;
typedef  int /*<<< orphan*/  ITextDocument ;
typedef  int /*<<< orphan*/  IRichEditOle ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HRESULT ;
typedef  char CHAR ;

/* Variables and functions */
 scalar_t__ CO_E_RELEASED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tomStart ; 

__attribute__((used)) static void FUNC8(void)
{
  HWND w;
  IRichEditOle *reOle = NULL;
  ITextDocument *txtDoc = NULL;
  ITextRange *txtRge = NULL;
  HRESULT hres;
  static const CHAR test_text1[] = "1\n2\n3\n4\n5\n6\n7\n8\n9\n10";

  FUNC5(&w, &reOle, &txtDoc, NULL);
  FUNC3(w, WM_SETTEXT, 0, (LPARAM)test_text1);

  /* Scroll to the top. */
  FUNC4(w, txtDoc, 0, 1, tomStart, 0);

  /* Scroll to the bottom. */
  FUNC4(w, txtDoc, 19, 20, tomStart, 1);

  /* Back up to the top. */
  FUNC4(w, txtDoc, 0, 1, tomStart, 0);

  /* Large range */
  FUNC4(w, txtDoc, 0, 20, tomStart, 0);

  hres = FUNC0(txtDoc, 0, 0, &txtRge);
  FUNC6(hres == S_OK, "got 0x%08x\n", hres);
  FUNC7(&w, &reOle, &txtDoc, NULL);
  hres = FUNC2(txtRge, tomStart);
  FUNC6(hres == CO_E_RELEASED, "got 0x%08x\n", hres);
  FUNC1(txtRge);
}