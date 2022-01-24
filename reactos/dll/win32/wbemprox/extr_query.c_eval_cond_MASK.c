#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct table {int dummy; } ;
struct TYPE_2__ {int ival; int /*<<< orphan*/  sval; int /*<<< orphan*/  propval; int /*<<< orphan*/  expr; } ;
struct expr {int type; TYPE_1__ u; } ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int LONGLONG ;
typedef  int INT_PTR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CIM_BOOLEAN ; 
 int /*<<< orphan*/  CIM_STRING ; 
 int /*<<< orphan*/  CIM_UINT64 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  EXPR_BVAL 133 
#define  EXPR_COMPLEX 132 
#define  EXPR_IVAL 131 
#define  EXPR_PROPVAL 130 
#define  EXPR_SVAL 129 
#define  EXPR_UNARY 128 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  WBEM_E_INVALID_QUERY ; 
 int /*<<< orphan*/  FUNC1 (struct table const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct table const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct table const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 

HRESULT FUNC4( const struct table *table, UINT row, const struct expr *cond, LONGLONG *val, UINT *type )
{
    if (!cond)
    {
        *val = 1;
        *type = CIM_UINT64;
        return S_OK;
    }
    switch (cond->type)
    {
    case EXPR_COMPLEX:
        return FUNC1( table, row, &cond->u.expr, val, type );

    case EXPR_UNARY:
        return FUNC3( table, row, &cond->u.expr, val, type );

    case EXPR_PROPVAL:
        return FUNC2( table, row, cond->u.propval, val, type );

    case EXPR_SVAL:
        *val = (INT_PTR)cond->u.sval;
        *type = CIM_STRING;
        return S_OK;

    case EXPR_IVAL:
        *val = cond->u.ival;
        *type = CIM_UINT64;
        return S_OK;

    case EXPR_BVAL:
        *val = cond->u.ival;
        *type = CIM_BOOLEAN;
        return S_OK;

    default:
        FUNC0("invalid expression type\n");
        break;
    }
    return WBEM_E_INVALID_QUERY;
}