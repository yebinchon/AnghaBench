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
struct TYPE_3__ {scalar_t__ dwValueLen; scalar_t__ lpValue; } ;
typedef  TYPE_1__* PTHEME_PROPERTY ;
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  COLORREF ;

/* Variables and functions */
 int /*<<< orphan*/  E_PROP_ID_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

HRESULT FUNC3(PTHEME_PROPERTY tp, COLORREF *pColor)
{
    LPCWSTR lpEnd;
    LPCWSTR lpCur;
    int red, green, blue;

    lpCur = tp->lpValue;
    lpEnd = tp->lpValue + tp->dwValueLen;

    if(!FUNC0(lpCur, lpEnd, &lpCur, &red)) {
        FUNC2("Could not parse color property\n");
        return E_PROP_ID_UNSUPPORTED;
    }
    if(!FUNC0(lpCur, lpEnd, &lpCur, &green)) {
        FUNC2("Could not parse color property\n");
        return E_PROP_ID_UNSUPPORTED;
    }
    if(!FUNC0(lpCur, lpEnd, &lpCur, &blue)) {
        FUNC2("Could not parse color property\n");
        return E_PROP_ID_UNSUPPORTED;
    }
    *pColor = FUNC1(red,green,blue);
    return S_OK;
}