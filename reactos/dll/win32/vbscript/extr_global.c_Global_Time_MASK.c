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
typedef  int /*<<< orphan*/  vbdisp_t ;
typedef  int /*<<< orphan*/  VARIANT ;
struct TYPE_3__ {scalar_t__ wDayOfYear; int /*<<< orphan*/  st; } ;
typedef  TYPE_1__ UDATE ;
typedef  int /*<<< orphan*/  SYSTEMTIME ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DATE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  VAR_TIMEVALUEONLY ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC5(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    SYSTEMTIME lt;
    UDATE ud;
    DATE time;
    HRESULT hres;

    FUNC2("\n");

    FUNC1(&lt);
    ud.st = lt;
    ud.wDayOfYear = 0;
    hres = FUNC3(&ud, 0, VAR_TIMEVALUEONLY, &time);
    if(FUNC0(hres))
        return hres;
    return FUNC4(res, time);
}