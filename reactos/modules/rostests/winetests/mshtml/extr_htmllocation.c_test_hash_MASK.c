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
struct location_test {scalar_t__ hash; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  IHTMLLocation ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 scalar_t__ E_POINTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(IHTMLLocation *loc, const struct location_test *test)
{
    HRESULT hres;
    BSTR str;

    hres = FUNC0(loc, NULL);
    FUNC2(hres == E_POINTER,
            "%s: get_hash should have failed with E_POINTER (0x%08x), was: 0x%08x\n",
            test->name, E_POINTER, hres);

    hres = FUNC0(loc, &str);
    FUNC2(hres == S_OK, "%s: get_hash failed: 0x%08x\n", test->name, hres);
    if(hres == S_OK)
        FUNC2(FUNC3(str, test->hash),
                "%s: expected retrieved hash to be L\"%s\", was: %s\n",
                test->name, test->hash, FUNC4(str));
    FUNC1(str);
}