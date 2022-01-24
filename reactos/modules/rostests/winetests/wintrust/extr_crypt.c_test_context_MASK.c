#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; int member_6; int member_7; } ;
struct TYPE_6__ {int member_0; int member_1; int member_2; TYPE_1__ member_3; } ;
typedef  void* HCATADMIN ;
typedef  TYPE_2__ GUID ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_ACCESS_DENIED ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ INVALID_FILE_ATTRIBUTES ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * catroot ; 
 int /*<<< orphan*/ * catroot2 ; 
 TYPE_2__ dummy ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 int FUNC7 (void**,TYPE_2__*,int) ; 
 int FUNC8 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    BOOL ret;
    HCATADMIN hca;
    static GUID unknown = { 0xC689AABA, 0x8E78, 0x11D0, { 0x8C,0x47,0x00,0xC0,0x4F,0xC2,0x95,0xEE }}; /* WINTRUST.DLL */
    CHAR dummydir[MAX_PATH];
    DWORD attrs;

    /* When CryptCATAdminAcquireContext is successful it will create
     * several directories if they don't exist:
     *
     * ...\system32\CatRoot\{GUID}, this directory holds the .cat files
     * ...\system32\CatRoot2\{GUID}  (WinXP and up), here we find the catalog database for that GUID
     *
     * Windows Vista uses lowercase catroot and catroot2.
     *
     * When passed a NULL GUID it will create the following directories although on
     * WinXP and up these directories are already present when Windows is installed:
     *
     * ...\system32\CatRoot\{127D0A1D-4EF2-11D1-8608-00C04FC295EE}
     * ...\system32\CatRoot2\{127D0A1D-4EF2-11D1-8608-00C04FC295EE} (WinXP up)
     *
     * TODO: Find out what this GUID is/does.
     *
     * On WinXP and up there is also a TimeStamp file in some of directories that
     * seem to indicate the last change to the catalog database for that GUID.
     *
     * On Windows 2000 some files are created/updated:
     *
     * ...\system32\CatRoot\SYSMAST.cbk
     * ...\system32\CatRoot\SYSMAST.cbd
     * ...\system32\CatRoot\{GUID}\CATMAST.cbk
     * ...\system32\CatRoot\{GUID}\CATMAST.cbd
     *
     */

    /* All NULL */
    FUNC2(0xdeadbeef);
    ret = FUNC7(NULL, NULL, 0);
    FUNC6(!ret, "Expected failure\n");
    FUNC6(FUNC1() == ERROR_INVALID_PARAMETER,
       "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC1());

    /* NULL GUID */
    if (0) { /* crashes on 64-bit win10 */
    ret = FUNC7(&hca, NULL, 0);
    FUNC6(ret, "Expected success, got FALSE with %d\n", FUNC1());
    FUNC6(hca != NULL, "Expected a context handle, got NULL\n");

    /* Proper release */
    FUNC2(0xdeadbeef);
    ret = FUNC8(hca, 0);
    FUNC6(ret, "Expected success, got FALSE with %d\n", FUNC1());

    /* Try to release a second time */
    FUNC2(0xdeadbeef);
    ret = FUNC8(hca, 0);
    FUNC6(!ret, "Expected failure\n");
    FUNC6(FUNC1() == ERROR_INVALID_PARAMETER,
       "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC1());
    }

    /* All NULL */
    FUNC2(0xdeadbeef);
    ret = FUNC8(NULL, 0);
    FUNC6(!ret, "Expected failure\n");
    FUNC6(FUNC1() == ERROR_INVALID_PARAMETER,
       "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC1());

    /* NULL context handle and dummy GUID */
    FUNC2(0xdeadbeef);
    ret = FUNC7(NULL, &dummy, 0);
    FUNC6(!ret, "Expected failure\n");
    FUNC6(FUNC1() == ERROR_INVALID_PARAMETER,
       "Expected ERROR_INVALID_PARAMETER, got %d\n", FUNC1());

    /* Correct context handle and dummy GUID
     *
     * The tests run in the past unfortunately made sure that some directories were created.
     *
     * FIXME:
     * We don't want to mess too much with these for now so we should delete only the ones
     * that shouldn't be there like the deadbeef ones. We first have to figure out if it's
     * safe to remove files and directories from CatRoot/CatRoot2.
     */

    ret = FUNC7(&hca, &dummy, 0);
    FUNC6(ret || FUNC1() == ERROR_ACCESS_DENIED, "CryptCATAdminAcquireContext failed %u\n", FUNC1());
    if (!ret && FUNC1() == ERROR_ACCESS_DENIED)
    {
        FUNC9("Not running as administrator\n");
        return;
    }
    FUNC6(hca != NULL, "Expected a context handle, got NULL\n");

    attrs = FUNC0(catroot);
    FUNC6(attrs != INVALID_FILE_ATTRIBUTES, "Expected the CatRoot directory to exist\n");

    /* Windows creates the GUID directory in capitals */
    FUNC5(dummydir, catroot);
    FUNC4(dummydir, "\\{DEADBEEF-DEAD-BEEF-DEAD-BEEFDEADBEEF}");
    attrs = FUNC0(dummydir);
    FUNC6(attrs != INVALID_FILE_ATTRIBUTES,
       "Expected CatRoot\\{DEADBEEF-DEAD-BEEF-DEAD-BEEFDEADBEEF} directory to exist\n");

    /* Only present on XP or higher. */
    attrs = FUNC0(catroot2);
    if (attrs != INVALID_FILE_ATTRIBUTES)
    {
        FUNC5(dummydir, catroot2);
        FUNC4(dummydir, "\\{DEADBEEF-DEAD-BEEF-DEAD-BEEFDEADBEEF}");
        attrs = FUNC0(dummydir);
        FUNC6(attrs != INVALID_FILE_ATTRIBUTES,
            "Expected CatRoot2\\{DEADBEEF-DEAD-BEEF-DEAD-BEEFDEADBEEF} directory to exist\n");
    }

    ret = FUNC8(hca, 0);
    FUNC6(ret, "Expected success, got FALSE with %d\n", FUNC1());

    /* Correct context handle and GUID */
    ret = FUNC7(&hca, &unknown, 0);
    FUNC6(ret, "Expected success, got FALSE with %d\n", FUNC1());
    FUNC6(hca != NULL, "Expected a context handle, got NULL\n");

    ret = FUNC8(hca, 0);
    FUNC6(ret, "Expected success, got FALSE with %d\n", FUNC1());

    hca = (void *) 0xdeadbeef;
    FUNC2(0xdeadbeef);
    /* Flags is documented as unused, but the parameter is checked since win8 */
    ret = FUNC7(&hca, &unknown, 1);
    FUNC6((!ret && (FUNC1() == ERROR_INVALID_PARAMETER) && (hca == (void *) 0xdeadbeef)) ||
        FUNC3(ret && hca != NULL && hca != (void *) 0xdeadbeef),
        "Expected FALSE and ERROR_INVALID_PARAMETER with untouched handle, got %d and %u with %p\n",
        ret, FUNC1(), hca);

    if (ret && hca)
    {
        FUNC2(0xdeadbeef);
        ret = FUNC8(hca, 0);
        FUNC6(ret, "Expected success, got FALSE with %d\n", FUNC1());
    }
}