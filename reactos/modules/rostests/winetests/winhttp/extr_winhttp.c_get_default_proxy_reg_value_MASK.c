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
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  Connections ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  KEY_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  WinHttpSettings ; 

__attribute__((used)) static DWORD FUNC3( BYTE *buf, DWORD len, DWORD *type )
{
    LONG l;
    HKEY key;
    DWORD ret = 0;

    l = FUNC1( HKEY_LOCAL_MACHINE, Connections, 0, KEY_READ, &key );
    if (!l)
    {
        DWORD size = 0;

        l = FUNC2( key, WinHttpSettings, NULL, type, NULL, &size );
        if (!l)
        {
            if (size <= len)
                l = FUNC2( key, WinHttpSettings, NULL, type, buf,
                    &size );
            if (!l)
                ret = size;
        }
        FUNC0( key );
    }
    return ret;
}