#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  textRect; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_1__ HEADCOMBO ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  BF_RECT ; 
 scalar_t__ CBS_SIMPLE ; 
 scalar_t__ FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EDGE_SUNKEN ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(
  HWND            hwnd,
  const HEADCOMBO *lphc,
  HDC             hdc)
{
  RECT clientRect;

  if (FUNC0(lphc) != CBS_SIMPLE)
  {
    FUNC6(hwnd, &clientRect);
  }
  else
  {
    FUNC3(&clientRect, &lphc->textRect);

    FUNC7(&clientRect, FUNC5(), FUNC5());
    FUNC7(&clientRect, FUNC1(), FUNC2());
  }

  FUNC4(hdc, &clientRect, EDGE_SUNKEN, BF_RECT);
}