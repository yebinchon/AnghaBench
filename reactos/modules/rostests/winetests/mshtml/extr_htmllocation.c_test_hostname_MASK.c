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
struct location_test {char* hostname; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  IHTMLLocation ;
typedef  int /*<<< orphan*/  IHTMLDocument2 ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ E_POINTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(IHTMLLocation *loc, IHTMLDocument2 *doc, const struct location_test *test)
{
    HRESULT hres;
    BSTR str;

    hres = FUNC1(loc, NULL);
    FUNC3(hres == E_POINTER,
            "%s: get_hostname should have failed with E_POINTER (0x%08x), was: 0x%08x\n",
            test->name, E_POINTER, hres);

    hres = FUNC1(loc, &str);
    FUNC3(hres == S_OK, "%s: get_hostname failed: 0x%08x\n", test->name, hres);
    if(hres == S_OK)
        FUNC3(FUNC4(str, test->hostname),
                "%s: expected retrieved hostname to be L\"%s\", was: %s\n",
                test->name, test->hostname, FUNC5(str));
    FUNC2(str);

    hres = FUNC0(doc, &str);
    FUNC3(hres == S_OK, "%s: get_domain failed: 0x%08x\n", test->name, hres);
    if(hres == S_OK)
        FUNC3(FUNC4(str, test->hostname ? test->hostname : ""),
                "%s: expected retrieved domain to be L\"%s\", was: %s\n",
                test->name, test->hostname, FUNC5(str));
    FUNC2(str);
}