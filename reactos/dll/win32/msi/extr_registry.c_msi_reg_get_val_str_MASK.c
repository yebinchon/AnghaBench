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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__* LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/ * LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 scalar_t__* FUNC1 (int) ; 

LPWSTR FUNC2( HKEY hkey, LPCWSTR name )
{
    DWORD len = 0;
    LPWSTR val;
    LONG r;

    r = FUNC0(hkey, name, NULL, NULL, NULL, &len);
    if (r != ERROR_SUCCESS)
        return NULL;

    len += sizeof (WCHAR);
    val = FUNC1( len );
    if (!val)
        return NULL;
    val[0] = 0;
    FUNC0(hkey, name, NULL, NULL, (LPBYTE) val, &len);
    return val;
}