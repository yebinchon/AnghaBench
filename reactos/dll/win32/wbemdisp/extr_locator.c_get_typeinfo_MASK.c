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
typedef  enum type_id { ____Placeholder_type_id } type_id ;
typedef  int /*<<< orphan*/  ITypeLib ;
typedef  int /*<<< orphan*/  ITypeInfo ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (void**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LIBID_WbemScripting ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * wbemdisp_tid_id ; 
 int /*<<< orphan*/ ** wbemdisp_typeinfo ; 
 int /*<<< orphan*/  wbemdisp_typelib ; 

__attribute__((used)) static HRESULT FUNC9( enum type_id tid, ITypeInfo **ret )
{
    HRESULT hr;

    if (!wbemdisp_typelib)
    {
        ITypeLib *typelib;

        hr = FUNC7( &LIBID_WbemScripting, 1, 2, LOCALE_SYSTEM_DEFAULT, &typelib );
        if (FUNC1( hr ))
        {
            FUNC0( "LoadRegTypeLib failed: %08x\n", hr );
            return hr;
        }
        if (FUNC6( (void **)&wbemdisp_typelib, typelib, NULL ))
            FUNC5( typelib );
    }
    if (!wbemdisp_typeinfo[tid])
    {
        ITypeInfo *typeinfo;

        hr = FUNC4( wbemdisp_typelib, wbemdisp_tid_id[tid], &typeinfo );
        if (FUNC1( hr ))
        {
            FUNC0( "GetTypeInfoOfGuid(%s) failed: %08x\n", FUNC8(wbemdisp_tid_id[tid]), hr );
            return hr;
        }
        if (FUNC6( (void **)(wbemdisp_typeinfo + tid), typeinfo, NULL ))
            FUNC3( typeinfo );
    }
    *ret = wbemdisp_typeinfo[tid];
    FUNC2( *ret );
    return S_OK;
}