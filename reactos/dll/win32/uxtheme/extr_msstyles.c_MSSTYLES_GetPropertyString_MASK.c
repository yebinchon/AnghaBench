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
struct TYPE_3__ {scalar_t__ dwValueLen; int /*<<< orphan*/  lpValue; } ;
typedef  TYPE_1__* PTHEME_PROPERTY ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

HRESULT FUNC2(PTHEME_PROPERTY tp, LPWSTR pszBuff, int cchMaxBuffChars)
{
    FUNC0(pszBuff, tp->lpValue, FUNC1(tp->dwValueLen+1, cchMaxBuffChars));
    return S_OK;
}