#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ cx; } ;
struct TYPE_15__ {TYPE_1__ spaceSize; } ;
struct TYPE_11__ {int left; int /*<<< orphan*/  bottom; int /*<<< orphan*/  top; } ;
struct TYPE_14__ {int /*<<< orphan*/  hDC; TYPE_2__ rcItem; } ;
struct TYPE_13__ {scalar_t__* positions; } ;
struct TYPE_12__ {int /*<<< orphan*/  bottom; scalar_t__ right; int /*<<< orphan*/  top; scalar_t__ left; } ;
typedef  TYPE_3__ RECT ;
typedef  TYPE_4__ Pane ;
typedef  TYPE_5__* LPDRAWITEMSTRUCT ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 int DT_EXPANDTABS ; 
 int DT_SINGLELINE ; 
 int DT_TABSTOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_3__*,int) ; 
 TYPE_8__ Globals ; 

__attribute__((used)) static void FUNC1(Pane* pane, LPDRAWITEMSTRUCT dis, int col, LPCWSTR str)
{
	int x = dis->rcItem.left;
	RECT rt;

	rt.left   = x+pane->positions[col]+Globals.spaceSize.cx;
	rt.top    = dis->rcItem.top;
	rt.right  = x+pane->positions[col+1]-Globals.spaceSize.cx;
	rt.bottom = dis->rcItem.bottom;

	FUNC0(dis->hDC, str, -1, &rt, DT_SINGLELINE|DT_EXPANDTABS|DT_TABSTOP|(2<<8));
}