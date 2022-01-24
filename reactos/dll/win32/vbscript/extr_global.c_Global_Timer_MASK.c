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
struct TYPE_3__ {int wHour; int wMinute; int wSecond; double wMilliseconds; } ;
typedef  TYPE_1__ SYSTEMTIME ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,double) ; 

__attribute__((used)) static HRESULT FUNC2(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    SYSTEMTIME lt;
    double sec;

    FUNC0(&lt);
    sec = lt.wHour * 3600 + lt.wMinute * 60 + lt.wSecond + lt.wMilliseconds / 1000.0;
    return FUNC1(res, sec);

}