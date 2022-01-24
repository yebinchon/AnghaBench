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
typedef  int UINT ;
typedef  scalar_t__ LPWSTR ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 

__attribute__((used)) static LPWSTR FUNC3( HWND hwnd )
{
    UINT sz, r;
    LPWSTR buf;

    sz = 0x20;
    buf = FUNC1( sz*sizeof(WCHAR) );
    while ( buf )
    {
        r = FUNC0( hwnd, buf, sz );
        if ( r < (sz - 1) )
            break;
        sz *= 2;
        buf = FUNC2( buf, sz*sizeof(WCHAR) );
    }

    return buf;
}