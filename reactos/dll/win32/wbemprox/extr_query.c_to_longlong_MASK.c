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
typedef  int /*<<< orphan*/  VARIANT ;
typedef  scalar_t__ LONGLONG ;
typedef  scalar_t__ INT_PTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  CIMTYPE ;

/* Variables and functions */
 int /*<<< orphan*/  CIM_BOOLEAN ; 
 int /*<<< orphan*/  CIM_SINT16 ; 
 int /*<<< orphan*/  CIM_SINT32 ; 
 int /*<<< orphan*/  CIM_STRING ; 
 int /*<<< orphan*/  CIM_UINT16 ; 
 int /*<<< orphan*/  CIM_UINT32 ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  S_OK ; 
 int VT_ARRAY ; 
#define  VT_BOOL 134 
#define  VT_BSTR 133 
#define  VT_I2 132 
#define  VT_I4 131 
#define  VT_NULL 130 
#define  VT_UI2 129 
#define  VT_UI4 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WBEM_E_FAILED ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

HRESULT FUNC10( VARIANT *var, LONGLONG *val, CIMTYPE *type )
{
    if (!var)
    {
        *val = 0;
        return S_OK;
    }
    if (FUNC7( var ) & VT_ARRAY)
    {
        *val = (INT_PTR)FUNC9( var, type );
        if (!*val) return E_OUTOFMEMORY;
        return S_OK;
    }
    switch (FUNC7( var ))
    {
    case VT_BOOL:
        *val = FUNC1( var );
        *type = CIM_BOOLEAN;
        break;
    case VT_BSTR:
        *val = (INT_PTR)FUNC8( FUNC2( var ) );
        if (!*val) return E_OUTOFMEMORY;
        *type = CIM_STRING;
        break;
    case VT_I2:
        *val = FUNC3( var );
        *type = CIM_SINT16;
        break;
    case VT_UI2:
        *val = FUNC5( var );
        *type = CIM_UINT16;
        break;
    case VT_I4:
        *val = FUNC4( var );
        *type = CIM_SINT32;
        break;
    case VT_UI4:
        *val = FUNC6( var );
        *type = CIM_UINT32;
        break;
    case VT_NULL:
        *val = 0;
        break;
    default:
        FUNC0("unhandled type %u\n", FUNC7( var ));
        return WBEM_E_FAILED;
    }
    return S_OK;
}