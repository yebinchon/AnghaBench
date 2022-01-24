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
struct array {int count; scalar_t__ ptr; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ VARTYPE ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  SAFEARRAY ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  CIMTYPE ;
typedef  void* BSTR ;

/* Variables and functions */
 scalar_t__ S_OK ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*,void*) ; 
 void* FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 scalar_t__ VT_BSTR ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

SAFEARRAY *FUNC7( const struct array *array, CIMTYPE type )
{
    SAFEARRAY *ret;
    UINT size = FUNC5( type );
    VARTYPE vartype = FUNC6( type );
    LONG i;

    if (!array || !(ret = FUNC0( vartype, 0, array->count ))) return NULL;

    for (i = 0; i < array->count; i++)
    {
        void *ptr = (char *)array->ptr + i * size;
        if (vartype == VT_BSTR)
        {
            BSTR str = FUNC3( *(const WCHAR **)ptr );
            if (!str || FUNC2( ret, &i, str ) != S_OK)
            {
                FUNC4( str );
                FUNC1( ret );
                return NULL;
            }
            FUNC4( str );
        }
        else if (FUNC2( ret, &i, ptr ) != S_OK)
        {
            FUNC1( ret );
            return NULL;
        }
    }
    return ret;
}