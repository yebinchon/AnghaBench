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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  HKEY_CURRENT_USER ; 
 int REG_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(void)
{
    char buf[10];
    DWORD value = 32, size = sizeof(buf), type;
    HKEY key;

    if (!FUNC1( HKEY_CURRENT_USER, "Control Panel\\Desktop\\WindowMetrics", &key ))
    {
        if (!FUNC2( key, "Shell Icon Size", NULL, &type, (BYTE *)buf, &size ) && type == REG_SZ)
            value = FUNC3( buf );
        FUNC0( key );
    }
    return value;
}