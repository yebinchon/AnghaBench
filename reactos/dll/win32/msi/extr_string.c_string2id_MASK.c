#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  codepage; } ;
typedef  TYPE_1__ string_table ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_1__ const*,int /*<<< orphan*/ *,int,scalar_t__*) ; 

__attribute__((used)) static UINT FUNC6( const string_table *st, const char *buffer, UINT *id )
{
    DWORD sz;
    UINT r = ERROR_INVALID_PARAMETER;
    LPWSTR str;

    FUNC1("Finding string %s in string table\n", FUNC2(buffer) );

    if( buffer[0] == 0 )
    {
        *id = 0;
        return ERROR_SUCCESS;
    }

    sz = FUNC0( st->codepage, 0, buffer, -1, NULL, 0 );
    if( sz <= 0 )
        return r;
    str = FUNC3( sz*sizeof(WCHAR) );
    if( !str )
        return ERROR_NOT_ENOUGH_MEMORY;
    FUNC0( st->codepage, 0, buffer, -1, str, sz );

    r = FUNC5( st, str, sz - 1, id );
    FUNC4( str );
    return r;
}