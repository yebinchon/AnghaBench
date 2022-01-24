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
typedef  scalar_t__ LPWSTR ;
typedef  char const* LPCWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char const*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static LPWSTR FUNC4( void *info, LPCWSTR list, LPCWSTR table )
{
    static const WCHAR space[] = {' ',0};
    DWORD len = FUNC3( list ) + FUNC3( table ) + 2;
    LPWSTR ret;

    ret = FUNC0( info, len * sizeof(WCHAR) );
    if( ret )
    {
        FUNC2( ret, list );
        FUNC1( ret, space );
        FUNC1( ret, table );
    }
    return ret;
}