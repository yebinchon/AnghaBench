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
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_NO_MORE_ITEMS ; 
 int /*<<< orphan*/  KEY_ENUMERATE_SUB_KEYS ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static DWORD FUNC4( HKEY hkey )
{
    char name[MAX_PATH];
    DWORD ret;

    while (!(ret = FUNC2(hkey, 0, name, sizeof(name))))
    {
        HKEY tmp;
        if (!(ret = FUNC3( hkey, name, 0, KEY_ENUMERATE_SUB_KEYS, &tmp )))
        {
            ret = FUNC4( tmp );
            FUNC0( tmp );
        }
        if (ret) break;
    }
    if (ret != ERROR_NO_MORE_ITEMS) return ret;
    FUNC1( hkey, "" );
    return 0;
}