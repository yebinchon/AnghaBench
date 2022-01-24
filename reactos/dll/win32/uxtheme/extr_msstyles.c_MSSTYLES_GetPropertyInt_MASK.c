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
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_PROP_ID_UNSUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

HRESULT FUNC2(PTHEME_PROPERTY tp, int *piVal)
{
    if(!FUNC0(tp->lpValue, (tp->lpValue + tp->dwValueLen), NULL, piVal)) {
        FUNC1("Could not parse int property\n");
        return E_PROP_ID_UNSUPPORTED;
    }
    return S_OK;
}