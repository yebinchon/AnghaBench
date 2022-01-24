#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int dwFlags; } ;
struct TYPE_5__ {int /*<<< orphan*/  hwnd; TYPE_1__ hostinfo; } ;
typedef  int /*<<< orphan*/  RECT ;
typedef  int /*<<< orphan*/  PAINTSTRUCT ;
typedef  TYPE_2__ HTMLDocumentObj ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int BF_ADJUST ; 
 int BF_RECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int DOCHOSTUIFLAG_NO3DBORDER ; 
 int DOCHOSTUIFLAG_NO3DOUTERBORDER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  EDGE_SUNKEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(HTMLDocumentObj *This)
{
    PAINTSTRUCT ps;
    RECT rect;
    HDC hdc;

    FUNC3(This->hwnd, &rect);

    hdc = FUNC0(This->hwnd, &ps);

    if(!(This->hostinfo.dwFlags & (DOCHOSTUIFLAG_NO3DOUTERBORDER|DOCHOSTUIFLAG_NO3DBORDER)))
        FUNC1(hdc, &rect, EDGE_SUNKEN, BF_RECT|BF_ADJUST);

    FUNC2(This->hwnd, &ps);
}