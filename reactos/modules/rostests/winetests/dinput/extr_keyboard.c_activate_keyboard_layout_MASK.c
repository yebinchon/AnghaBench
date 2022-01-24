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
typedef  int LANGID ;
typedef  int /*<<< orphan*/  HKL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static HKL FUNC9(LANGID langid, HKL *hkl_orig)
{
    HKL hkl, hkl_current;
    char hkl_name[64];

    FUNC6(hkl_name, "%08x", langid);
    FUNC7("Loading keyboard layout %s\n", hkl_name);
    hkl = FUNC3(hkl_name, 0);
    if (!hkl)
    {
        FUNC8("Unable to load keyboard layout %s\n", hkl_name);
        return 0;
    }
    *hkl_orig = FUNC0(hkl, 0);
    FUNC4(*hkl_orig != 0, "Unable to activate keyboard layout %s\n", hkl_name);
    if (!*hkl_orig) return 0;

    hkl_current = FUNC1(0);
    if (FUNC2(hkl_current) != langid)
    {
        /* FIXME: Wine can't activate different keyboard layouts.
         * for testing purposes use this workaround:
         * setxkbmap us && LANG=en_US.UTF-8 make test
         * setxkbmap fr && LANG=fr_FR.UTF-8 make test
         * setxkbmap de && LANG=de_DE.UTF-8 make test
         */
        FUNC5("current %08x != langid %08x\n", FUNC2(hkl_current), langid);
        return 0;
    }

    return hkl;
}