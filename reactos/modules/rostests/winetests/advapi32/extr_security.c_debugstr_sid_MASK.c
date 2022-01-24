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
typedef  int /*<<< orphan*/  PSID ;
typedef  char* LPSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char**) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 size_t SID_SLOTS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 size_t debugsid_index ; 
 char** debugsid_str ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static const char* FUNC8(PSID sid)
{
    LPSTR sidstr;
    DWORD le = FUNC1();
    char* res = debugsid_str[debugsid_index];
    debugsid_index = (debugsid_index + 1) % SID_SLOTS;

    if (!FUNC0(sid, &sidstr))
        FUNC5(res, "ConvertSidToStringSidA failed le=%u", FUNC1());
    else if (FUNC7(sidstr) > sizeof(*debugsid_str) - 1)
    {
        FUNC4(res, sidstr, sizeof(*debugsid_str) - 4);
        FUNC6(res + sizeof(*debugsid_str) - 4, "...");
        FUNC2(sidstr);
    }
    else
    {
        FUNC6(res, sidstr);
        FUNC2(sidstr);
    }
    /* Restore the last error in case ConvertSidToStringSidA() modified it */
    FUNC3(le);
    return res;
}