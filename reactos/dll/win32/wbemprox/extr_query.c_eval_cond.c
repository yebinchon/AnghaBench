
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct table {int dummy; } ;
struct TYPE_2__ {int ival; int sval; int propval; int expr; } ;
struct expr {int type; TYPE_1__ u; } ;
typedef int UINT ;
typedef int LONGLONG ;
typedef int INT_PTR ;
typedef int HRESULT ;


 int CIM_BOOLEAN ;
 int CIM_STRING ;
 int CIM_UINT64 ;
 int ERR (char*) ;






 int S_OK ;
 int WBEM_E_INVALID_QUERY ;
 int eval_binary (struct table const*,int ,int *,int*,int *) ;
 int eval_propval (struct table const*,int ,int ,int*,int *) ;
 int eval_unary (struct table const*,int ,int *,int*,int *) ;

HRESULT eval_cond( const struct table *table, UINT row, const struct expr *cond, LONGLONG *val, UINT *type )
{
    if (!cond)
    {
        *val = 1;
        *type = CIM_UINT64;
        return S_OK;
    }
    switch (cond->type)
    {
    case 132:
        return eval_binary( table, row, &cond->u.expr, val, type );

    case 128:
        return eval_unary( table, row, &cond->u.expr, val, type );

    case 130:
        return eval_propval( table, row, cond->u.propval, val, type );

    case 129:
        *val = (INT_PTR)cond->u.sval;
        *type = CIM_STRING;
        return S_OK;

    case 131:
        *val = cond->u.ival;
        *type = CIM_UINT64;
        return S_OK;

    case 133:
        *val = cond->u.ival;
        *type = CIM_BOOLEAN;
        return S_OK;

    default:
        ERR("invalid expression type\n");
        break;
    }
    return WBEM_E_INVALID_QUERY;
}
