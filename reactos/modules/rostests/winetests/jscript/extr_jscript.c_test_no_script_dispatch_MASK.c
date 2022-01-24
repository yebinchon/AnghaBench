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
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  IActiveScript ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 scalar_t__ E_UNEXPECTED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 

__attribute__((used)) static void FUNC2(IActiveScript *script)
{
    IDispatch *disp;
    HRESULT hres;

    disp = (void*)0xdeadbeef;
    hres = FUNC0(script, NULL, &disp);
    FUNC1(hres == E_UNEXPECTED, "hres = %08x, expected E_UNEXPECTED\n", hres);
    FUNC1(!disp, "disp != NULL\n");
}