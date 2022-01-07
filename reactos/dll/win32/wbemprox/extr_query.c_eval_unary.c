
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct table {TYPE_3__* columns; } ;
struct complex_expr {int op; TYPE_4__* left; } ;
typedef size_t UINT ;
struct TYPE_6__ {TYPE_1__* propval; } ;
struct TYPE_8__ {TYPE_2__ u; } ;
struct TYPE_7__ {size_t type; } ;
struct TYPE_5__ {int name; } ;
typedef int LONGLONG ;
typedef scalar_t__ HRESULT ;


 size_t CIM_TYPE_MASK ;
 int ERR (char*,int) ;

 int OP_NOT ;

 scalar_t__ S_OK ;
 scalar_t__ WBEM_E_INVALID_QUERY ;
 scalar_t__ eval_cond (struct table const*,size_t,TYPE_4__*,int*,size_t*) ;
 scalar_t__ get_column_index (struct table const*,int ,size_t*) ;
 scalar_t__ get_value (struct table const*,size_t,size_t,int*) ;

__attribute__((used)) static HRESULT eval_unary( const struct table *table, UINT row, const struct complex_expr *expr,
                           LONGLONG *val, UINT *type )

{
    HRESULT hr;
    UINT column;
    LONGLONG lval;

    if (expr->op == OP_NOT)
    {
        hr = eval_cond( table, row, expr->left, &lval, type );
        if (hr != S_OK)
            return hr;
        *val = !lval;
        return S_OK;
    }

    hr = get_column_index( table, expr->left->u.propval->name, &column );
    if (hr != S_OK)
        return hr;

    hr = get_value( table, row, column, &lval );
    if (hr != S_OK)
        return hr;

    switch (expr->op)
    {
    case 129:
        *val = !lval;
        break;
    case 128:
        *val = lval;
        break;
    default:
        ERR("unknown operator %u\n", expr->op);
        return WBEM_E_INVALID_QUERY;
    }

    *type = table->columns[column].type & CIM_TYPE_MASK;
    return S_OK;
}
