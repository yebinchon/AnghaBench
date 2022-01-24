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
typedef  int /*<<< orphan*/  IHTMLSelectElement ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_INVALIDARG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(IHTMLSelectElement *select)
{
    HRESULT hres;

    hres = FUNC0(select, 3);
    FUNC1(hres == S_OK, "remove failed: %08x, expected S_OK\n", hres);
    FUNC2(select, 2);

    hres = FUNC0(select, -1);
    FUNC1(hres == E_INVALIDARG, "remove failed: %08x, expected E_INVALIDARG\n", hres);
    FUNC2(select, 2);

    hres = FUNC0(select, 0);
    FUNC1(hres == S_OK, "remove failed:%08x\n", hres);
    FUNC2(select, 1);
}