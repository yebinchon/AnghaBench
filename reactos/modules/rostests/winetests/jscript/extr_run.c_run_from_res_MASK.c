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
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCRIPTITEM_GLOBALMEMBERS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  global_success_d ; 
 int /*<<< orphan*/  global_success_i ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(const char *name)
{
    BSTR str;
    HRESULT hres;

    str = FUNC3(name);

    FUNC1(global_success_d);
    FUNC1(global_success_i);
    hres = FUNC5(SCRIPTITEM_GLOBALMEMBERS, str);
    FUNC0(global_success_d);
    FUNC0(global_success_i);

    FUNC4(hres == S_OK, "parse_script failed: %08x\n", hres);
    FUNC2(str);
}