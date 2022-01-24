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
struct table {int dummy; } ;
struct complex_expr {int op; int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
typedef  scalar_t__ LONGLONG ;
typedef  scalar_t__ INT_PTR ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  OP_AND 135 
#define  OP_EQ 134 
#define  OP_GE 133 
#define  OP_GT 132 
#define  OP_LE 131 
#define  OP_LT 130 
#define  OP_NE 129 
#define  OP_OR 128 
 scalar_t__ S_OK ; 
 scalar_t__ WBEM_E_INVALID_QUERY ; 
 scalar_t__ FUNC1 (int,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC2 (struct table const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct complex_expr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct complex_expr const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC9( const struct table *table, UINT row, const struct complex_expr *expr,
                            LONGLONG *val, UINT *type )
{
    HRESULT lret, rret;
    LONGLONG lval, rval;
    UINT ltype, rtype;

    lret = FUNC2( table, row, expr->left, &lval, &ltype );
    rret = FUNC2( table, row, expr->right, &rval, &rtype );
    if (lret != S_OK || rret != S_OK) return WBEM_E_INVALID_QUERY;

    *type = FUNC8( ltype, rtype );

    if (FUNC5( expr, ltype, rtype ))
        return FUNC1( expr->op, lval, rval, ltype, rtype, val );

    if (FUNC7( expr, ltype, rtype ))
    {
        const WCHAR *lstr, *rstr;
        WCHAR lbuf[21], rbuf[21];

        if (FUNC6( ltype )) lstr = FUNC4( lbuf, ltype, lval );
        else lstr = (const WCHAR *)(INT_PTR)lval;

        if (FUNC6( rtype )) rstr = FUNC4( rbuf, rtype, rval );
        else rstr = (const WCHAR *)(INT_PTR)rval;

        return FUNC3( expr->op, lstr, rstr, val );
    }
    switch (expr->op)
    {
    case OP_EQ:
        *val = (lval == rval);
        break;
    case OP_AND:
        *val = (lval && rval);
        break;
    case OP_OR:
        *val = (lval || rval);
        break;
    case OP_GT:
        *val = (lval > rval);
        break;
    case OP_LT:
        *val = (lval < rval);
        break;
    case OP_LE:
        *val = (lval <= rval);
        break;
    case OP_GE:
        *val = (lval >= rval);
        break;
    case OP_NE:
        *val = (lval != rval);
        break;
    default:
        FUNC0("unhandled operator %u\n", expr->op);
        return WBEM_E_INVALID_QUERY;
    }
    return S_OK;
}