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
typedef  int* LPDWORD ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (char*) ; 
 int* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 int* FUNC7 (int*,int) ; 
 int /*<<< orphan*/  wszZonesKey ; 

__attribute__((used)) static LPDWORD FUNC8(void)
{
    WCHAR name[32];
    HKEY hkey;
    LPDWORD data = NULL;
    DWORD allocated = 6; /* space for the zonecount and Zone "0" up to Zone "4" */
    DWORD used = 0;
    DWORD res;
    DWORD len;


    res = FUNC3(HKEY_CURRENT_USER, wszZonesKey, &hkey);
    if (res)
        return NULL;

    data = FUNC5(allocated * sizeof(DWORD));
    if (!data)
        goto cleanup;

    while (!res) {
        name[0] = '\0';
        len = FUNC0(name);
        res = FUNC2(hkey, used, name, &len, NULL, NULL, NULL, NULL);

        if (!res) {
            used++;
            if (used == allocated) {
                LPDWORD new_data;

                allocated *= 2;
                new_data = FUNC7(data, allocated * sizeof(DWORD));
                if (!new_data)
                    goto cleanup;

                data = new_data;
            }
            data[used] = FUNC4(name);
        }
    }
    if (used) {
        FUNC1(hkey);
        data[0] = used;
        return data;
    }

cleanup:
    /* something failed */
    FUNC1(hkey);
    FUNC6(data);
    return NULL;
}