#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct view {size_t* result; TYPE_2__* table; int /*<<< orphan*/  count; } ;
struct array {int dummy; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int VARTYPE ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  size_t UINT ;
struct TYPE_7__ {TYPE_1__* columns; } ;
struct TYPE_6__ {int type; int vartype; } ;
typedef  scalar_t__ LONGLONG ;
typedef  scalar_t__ LONG ;
typedef  scalar_t__ INT_PTR ;
typedef  scalar_t__ HRESULT ;
typedef  int CIMTYPE ;

/* Variables and functions */
#define  CIM_BOOLEAN 138 
#define  CIM_DATETIME 137 
 int CIM_FLAG_ARRAY ; 
#define  CIM_SINT16 136 
#define  CIM_SINT32 135 
#define  CIM_SINT64 134 
#define  CIM_SINT8 133 
#define  CIM_STRING 132 
 int CIM_TYPE_MASK ; 
#define  CIM_UINT16 131 
#define  CIM_UINT32 130 
#define  CIM_UINT64 129 
#define  CIM_UINT8 128 
 int COL_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ S_OK ; 
 void* FUNC1 (int /*<<< orphan*/  const*) ; 
 int VT_ARRAY ; 
 int VT_BOOL ; 
 int VT_BSTR ; 
 int VT_I1 ; 
 int VT_I2 ; 
 int VT_I4 ; 
 int VT_NULL ; 
 int VT_UI1 ; 
 int VT_UI2 ; 
 int VT_UI4 ; 
 scalar_t__ WBEM_E_FAILED ; 
 scalar_t__ WBEM_E_NOT_FOUND ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/  const*,size_t*) ; 
 scalar_t__ FUNC3 (struct view const*,size_t,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int*,scalar_t__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*,size_t,size_t,scalar_t__*) ; 
 void* FUNC5 (TYPE_2__*,size_t,size_t) ; 
 scalar_t__ FUNC6 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct view const*,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__,void*,int /*<<< orphan*/ *) ; 
 void* FUNC10 (struct array const*,int) ; 
 int FUNC11 (int) ; 

HRESULT FUNC12( const struct view *view, UINT index, const WCHAR *name, VARIANT *ret,
                     CIMTYPE *type, LONG *flavor )
{
    HRESULT hr;
    UINT column, row;
    VARTYPE vartype;
    void *val_ptr = NULL;
    LONGLONG val;

    if (FUNC8( name )) return FUNC3( view, index, name, ret, type, flavor );
    if (!view->count || !FUNC7( view, name )) return WBEM_E_NOT_FOUND;

    hr = FUNC2( view->table, name, &column );
    if (hr != S_OK || FUNC6( view->table, column )) return WBEM_E_NOT_FOUND;

    row = view->result[index];
    hr = FUNC4( view->table, row, column, &val );
    if (hr != S_OK) return hr;

    if (type) *type = view->table->columns[column].type & COL_TYPE_MASK;
    if (flavor) *flavor = 0;

    if (!ret) return S_OK;

    vartype = view->table->columns[column].vartype;
    if (view->table->columns[column].type & CIM_FLAG_ARRAY)
    {
        CIMTYPE basetype = view->table->columns[column].type & CIM_TYPE_MASK;

        val_ptr = FUNC10( (const struct array *)(INT_PTR)val, basetype );
        if (!val_ptr) vartype = VT_NULL;
        else if (!vartype) vartype = FUNC11( basetype ) | VT_ARRAY;
        FUNC9( vartype, val, val_ptr, ret );
        return S_OK;
    }

    switch (view->table->columns[column].type & COL_TYPE_MASK)
    {
    case CIM_BOOLEAN:
        if (!vartype) vartype = VT_BOOL;
        break;
    case CIM_STRING:
    case CIM_DATETIME:
        if (val)
        {
            vartype = VT_BSTR;
            val_ptr = FUNC1( (const WCHAR *)(INT_PTR)val );
        }
        else
            vartype = VT_NULL;
        break;
    case CIM_SINT8:
        if (!vartype) vartype = VT_I1;
        break;
    case CIM_UINT8:
        if (!vartype) vartype = VT_UI1;
        break;
    case CIM_SINT16:
        if (!vartype) vartype = VT_I2;
        break;
    case CIM_UINT16:
        if (!vartype) vartype = VT_UI2;
        break;
    case CIM_SINT32:
        if (!vartype) vartype = VT_I4;
        break;
    case CIM_UINT32:
        if (!vartype) vartype = VT_UI4;
        break;
    case CIM_SINT64:
        vartype = VT_BSTR;
        val_ptr = FUNC5( view->table, row, column );
        break;
    case CIM_UINT64:
        vartype = VT_BSTR;
        val_ptr = FUNC5( view->table, row, column );
        break;
    default:
        FUNC0("unhandled column type %u\n", view->table->columns[column].type);
        return WBEM_E_FAILED;
    }

    FUNC9( vartype, val, val_ptr, ret );
    return S_OK;
}