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
typedef  int /*<<< orphan*/  buff ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int REG_SZ ; 
 int /*<<< orphan*/  REG_TEST_FULLKEY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 unsigned int FUNC4 (char const*) ; 

__attribute__((used)) static void FUNC5(const char *mrulist, const char**items)
{
    char buff[128];
    HKEY hKey = NULL;
    DWORD type, size, ret;
    unsigned int i;

    FUNC2(!FUNC0(HKEY_CURRENT_USER, REG_TEST_FULLKEY, &hKey),
       "Couldn't open test key \"%s\"\n", REG_TEST_FULLKEY);
    if (!hKey) return;

    type = REG_SZ;
    size = sizeof(buff);
    buff[0] = '\0';
    ret = FUNC1(hKey, "MRUList", NULL, &type, (LPBYTE)buff, &size);

    FUNC2(!ret && buff[0], "Checking MRU: got %d from RegQueryValueExW\n", ret);
    if(ret || !buff[0]) return;

    FUNC2(FUNC3(buff, mrulist) == 0, "Checking MRU: Expected list %s, got %s\n",
       mrulist, buff);
    if(FUNC3(buff, mrulist)) return;

    for (i = 0; i < FUNC4(mrulist); i++)
    {
        char name[2];
        name[0] = mrulist[i];
        name[1] = '\0';
        type = REG_SZ;
        size = sizeof(buff);
        buff[0] = '\0';
        ret = FUNC1(hKey, name, NULL, &type, (LPBYTE)buff, &size);
        FUNC2(!ret && buff[0],
           "Checking MRU item %d ('%c'): got %d from RegQueryValueExW\n",
           i, mrulist[i], ret);
        if(ret || !buff[0]) return;
        FUNC2(!FUNC3(buff, items[mrulist[i]-'a']),
           "Checking MRU item %d ('%c'): expected \"%s\", got \"%s\"\n",
           i, mrulist[i], buff, items[mrulist[i] - 'a']);
    }
}