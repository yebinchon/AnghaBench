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
struct TYPE_8__ {int /*<<< orphan*/  codepage; TYPE_1__* strings; } ;
typedef  TYPE_2__ string_table ;
typedef  enum StringPersistence { ____Placeholder_StringPersistence } StringPersistence ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  USHORT ;
typedef  size_t UINT ;
struct TYPE_7__ {scalar_t__ nonpersistent_refcount; scalar_t__ persistent_refcount; } ;
typedef  scalar_t__* LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,size_t,scalar_t__*,int) ; 
 int StringPersistent ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,size_t,scalar_t__*,int,int /*<<< orphan*/ ,int) ; 
 size_t FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*,char const*,size_t*) ; 

__attribute__((used)) static int FUNC7( string_table *st, UINT n, const char *data, UINT len, USHORT refcount, enum StringPersistence persistence )
{
    LPWSTR str;
    int sz;

    if( !data || !len )
        return 0;
    if( n > 0 )
    {
        if( st->strings[n].persistent_refcount ||
            st->strings[n].nonpersistent_refcount )
            return -1;
    }
    else
    {
        if (FUNC6( st, data, &n ) == ERROR_SUCCESS)
        {
            if (persistence == StringPersistent)
                st->strings[n].persistent_refcount += refcount;
            else
                st->strings[n].nonpersistent_refcount += refcount;
            return n;
        }
        n = FUNC5( st );
        if( n == -1 )
            return -1;
    }

    if( n < 1 )
    {
        FUNC0("invalid index adding %s (%d)\n", FUNC2( data ), n );
        return -1;
    }

    /* allocate a new string */
    sz = FUNC1( st->codepage, 0, data, len, NULL, 0 );
    str = FUNC3( (sz+1)*sizeof(WCHAR) );
    if( !str )
        return -1;
    FUNC1( st->codepage, 0, data, len, str, sz );
    str[sz] = 0;

    FUNC4( st, n, str, sz, refcount, persistence );
    return n;
}