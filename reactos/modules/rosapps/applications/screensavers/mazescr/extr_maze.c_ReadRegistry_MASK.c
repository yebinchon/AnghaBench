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
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  void* DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 void* post_solve_delay ; 
 void* pre_solve_delay ; 
 int /*<<< orphan*/  registryPath ; 
 void* size ; 
 void* solve_delay ; 

__attribute__((used)) static void FUNC5()
{
    LONG result;
    HKEY skey;
    DWORD valuetype, valuesize, val_size, val_presd, val_postsd, val_sd;

    FUNC3();

    result = FUNC1(HKEY_CURRENT_USER, registryPath, 0, KEY_READ, &skey);
    if(result != ERROR_SUCCESS)
        return;

    valuesize = sizeof(DWORD);

    result = FUNC2(skey, FUNC4("size"), NULL, &valuetype, (LPBYTE)&val_size, &valuesize);
    if(result == ERROR_SUCCESS)
        size = val_size;
    result = FUNC2(skey, FUNC4("pre_solve_delay"), NULL, &valuetype, (LPBYTE)&val_presd, &valuesize);
    if(result == ERROR_SUCCESS)
        pre_solve_delay = val_presd;
    result = FUNC2(skey, FUNC4("post_solve_delay"), NULL, &valuetype, (LPBYTE)&val_postsd, &valuesize);
    if(result == ERROR_SUCCESS)
        post_solve_delay = val_postsd;
    result = FUNC2(skey, FUNC4("solve_delay"), NULL, &valuetype, (LPBYTE)&val_sd, &valuesize);
    if(result == ERROR_SUCCESS)
        solve_delay = val_sd;

    FUNC0(skey);
}