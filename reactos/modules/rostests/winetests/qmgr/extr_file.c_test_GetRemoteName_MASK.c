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
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  test_file ; 
 int /*<<< orphan*/  test_remoteUrl ; 

__attribute__((used)) static void FUNC4(void)
{
    HRESULT hres;
    LPWSTR name;

    hres = FUNC1(test_file, &name);
    FUNC3(hres == S_OK, "GetRemoteName failed: %08x\n", hres);
    FUNC3(FUNC2(name, test_remoteUrl) == 0, "Got incorrect remote name\n");
    FUNC0(name);
}