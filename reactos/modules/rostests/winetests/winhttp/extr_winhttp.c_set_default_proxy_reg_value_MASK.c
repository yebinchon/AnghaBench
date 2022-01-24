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
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int KEY_WOW64_32KEY ; 
 int KEY_WOW64_64KEY ; 
 int KEY_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3( BYTE *buf, DWORD len, DWORD type )
{
    BOOL wow64;
    FUNC1( FUNC0(), &wow64 );
    if (sizeof(void *) > sizeof(int) || wow64)
    {
        FUNC2( KEY_WRITE|KEY_WOW64_64KEY, buf, len, type );
        FUNC2( KEY_WRITE|KEY_WOW64_32KEY, buf, len, type );
    }
    else
        FUNC2( KEY_WRITE, buf, len, type );
}