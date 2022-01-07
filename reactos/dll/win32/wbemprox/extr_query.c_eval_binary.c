
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table {int dummy; } ;
struct complex_expr {int op; int right; int left; } ;
typedef int WCHAR ;
typedef int UINT ;
typedef scalar_t__ LONGLONG ;
typedef scalar_t__ INT_PTR ;
typedef scalar_t__ HRESULT ;


 int ERR (char*,int) ;
 scalar_t__ S_OK ;
 scalar_t__ WBEM_E_INVALID_QUERY ;
 scalar_t__ eval_boolcmp (int,scalar_t__,scalar_t__,int ,int ,scalar_t__*) ;
 scalar_t__ eval_cond (struct table const*,int ,int ,scalar_t__*,int *) ;
 scalar_t__ eval_strcmp (int,int const*,int const*,scalar_t__*) ;
 int * format_int (int *,int ,scalar_t__) ;
 scalar_t__ is_boolcmp (struct complex_expr const*,int ,int ) ;
 scalar_t__ is_int (int ) ;
 scalar_t__ is_strcmp (struct complex_expr const*,int ,int ) ;
 int resolve_type (int ,int ) ;

__attribute__((used)) static HRESULT eval_binary( const struct table *table, UINT row, const struct complex_expr *expr,
                            LONGLONG *val, UINT *type )
{
    HRESULT lret, rret;
    LONGLONG lval, rval;
    UINT ltype, rtype;

    lret = eval_cond( table, row, expr->left, &lval, &ltype );
    rret = eval_cond( table, row, expr->right, &rval, &rtype );
    if (lret != S_OK || rret != S_OK) return WBEM_E_INVALID_QUERY;

    *type = resolve_type( ltype, rtype );

    if (is_boolcmp( expr, ltype, rtype ))
        return eval_boolcmp( expr->op, lval, rval, ltype, rtype, val );

    if (is_strcmp( expr, ltype, rtype ))
    {
        const WCHAR *lstr, *rstr;
        WCHAR lbuf[21], rbuf[21];

        if (is_int( ltype )) lstr = format_int( lbuf, ltype, lval );
        else lstr = (const WCHAR *)(INT_PTR)lval;

        if (is_int( rtype )) rstr = format_int( rbuf, rtype, rval );
        else rstr = (const WCHAR *)(INT_PTR)rval;

        return eval_strcmp( expr->op, lstr, rstr, val );
    }
    switch (expr->op)
    {
    case 134:
        *val = (lval == rval);
        break;
    case 135:
        *val = (lval && rval);
        break;
    case 128:
        *val = (lval || rval);
        break;
    case 132:
        *val = (lval > rval);
        break;
    case 130:
        *val = (lval < rval);
        break;
    case 131:
        *val = (lval <= rval);
        break;
    case 133:
        *val = (lval >= rval);
        break;
    case 129:
        *val = (lval != rval);
        break;
    default:
        ERR("unhandled operator %u\n", expr->op);
        return WBEM_E_INVALID_QUERY;
    }
    return S_OK;
}
