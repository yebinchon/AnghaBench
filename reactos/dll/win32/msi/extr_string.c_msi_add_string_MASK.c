#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* strings; } ;
typedef  TYPE_2__ string_table ;
typedef  enum StringPersistence { ____Placeholder_StringPersistence } StringPersistence ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  size_t UINT ;
struct TYPE_7__ {int /*<<< orphan*/  nonpersistent_refcount; int /*<<< orphan*/  persistent_refcount; } ;
typedef  scalar_t__* LPWSTR ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int StringPersistent ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/  const*,int) ; 
 scalar_t__* FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int /*<<< orphan*/  const*,int,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,size_t,scalar_t__*,int,int,int) ; 
 size_t FUNC6 (TYPE_2__*) ; 
 int FUNC7 (int /*<<< orphan*/  const*) ; 

int FUNC8( string_table *st, const WCHAR *data, int len, enum StringPersistence persistence )
{
    UINT n;
    LPWSTR str;

    if( !data )
        return 0;

    if (len < 0) len = FUNC7( data );

    if( !data[0] && !len )
        return 0;

    if (FUNC4( st, data, len, &n) == ERROR_SUCCESS )
    {
        if (persistence == StringPersistent)
            st->strings[n].persistent_refcount++;
        else
            st->strings[n].nonpersistent_refcount++;
        return n;
    }

    n = FUNC6( st );
    if( n == -1 )
        return -1;

    /* allocate a new string */
    FUNC0( "%s, n = %d len = %d\n", FUNC1(data, len), n, len );

    str = FUNC3( (len+1)*sizeof(WCHAR) );
    if( !str )
        return -1;
    FUNC2( str, data, len*sizeof(WCHAR) );
    str[len] = 0;

    FUNC5( st, n, str, len, 1, persistence );
    return n;
}