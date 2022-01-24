#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct table {TYPE_3__* columns; } ;
struct complex_expr {int op; TYPE_4__* left; } ;
typedef  size_t UINT ;
struct TYPE_6__ {TYPE_1__* propval; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
struct TYPE_7__ {size_t type; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
typedef  int LONGLONG ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 size_t CIM_TYPE_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  OP_ISNULL 129 
 int OP_NOT ; 
#define  OP_NOTNULL 128 
 scalar_t__ S_OK ; 
 scalar_t__ WBEM_E_INVALID_QUERY ; 
 scalar_t__ FUNC1 (struct table const*,size_t,TYPE_4__*,int*,size_t*) ; 
 scalar_t__ FUNC2 (struct table const*,int /*<<< orphan*/ ,size_t*) ; 
 scalar_t__ FUNC3 (struct table const*,size_t,size_t,int*) ; 

__attribute__((used)) static HRESULT FUNC4( const struct table *table, UINT row, const struct complex_expr *expr,
                           LONGLONG *val, UINT *type )

{
    HRESULT hr;
    UINT column;
    LONGLONG lval;

    if (expr->op == OP_NOT)
    {
        hr = FUNC1( table, row, expr->left, &lval, type );
        if (hr != S_OK)
            return hr;
        *val = !lval;
        return S_OK;
    }

    hr = FUNC2( table, expr->left->u.propval->name, &column );
    if (hr != S_OK)
        return hr;

    hr = FUNC3( table, row, column, &lval );
    if (hr != S_OK)
        return hr;

    switch (expr->op)
    {
    case OP_ISNULL:
        *val = !lval;
        break;
    case OP_NOTNULL:
        *val = lval;
        break;
    default:
        FUNC0("unknown operator %u\n", expr->op);
        return WBEM_E_INVALID_QUERY;
    }

    *type = table->columns[column].type & CIM_TYPE_MASK;
    return S_OK;
}