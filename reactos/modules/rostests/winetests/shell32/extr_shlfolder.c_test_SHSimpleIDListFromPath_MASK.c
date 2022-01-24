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
typedef  char WCHAR ;
typedef  int /*<<< orphan*/ * LPITEMIDLIST ;
typedef  char CHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC8(void)
{
    const WCHAR adirW[] = {'C',':','\\','s','i','d','l','f','p','d','i','r',0};
    const CHAR adirA[] = "C:\\sidlfpdir";
    BOOL br, is_unicode = !(FUNC2() & 0x80000000);

    LPITEMIDLIST pidl = NULL;

    br = FUNC0(adirA, NULL);
    FUNC6(br == TRUE, "CreateDirectory failed: %d\n", FUNC1());

    if(is_unicode)
        pidl = FUNC5(adirW);
    else
        pidl = FUNC5((const WCHAR *)adirA);
    FUNC7(pidl, adirW);
    FUNC3(pidl);

    br = FUNC4(adirA);
    FUNC6(br == TRUE, "RemoveDirectory failed: %d\n", FUNC1());

    if(is_unicode)
        pidl = FUNC5(adirW);
    else
        pidl = FUNC5((const WCHAR *)adirA);
    FUNC7(pidl, adirW);
    FUNC3(pidl);
}