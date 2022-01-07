
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct complex_expr {int op; TYPE_2__* left; } ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {int column; } ;
struct TYPE_4__ {TYPE_1__ u; } ;
typedef int MSIWHEREVIEW ;
typedef int MSIRECORD ;
typedef int INT ;


 int ERR (char*,int) ;
 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SUCCESS ;


 scalar_t__ expr_fetch_value (int *,scalar_t__ const*,scalar_t__*) ;

__attribute__((used)) static UINT INT_evaluate_unary( MSIWHEREVIEW *wv, const UINT rows[],
                                const struct complex_expr *expr, INT *val, MSIRECORD *record )
{
    UINT r;
    UINT lval;

    r = expr_fetch_value(&expr->left->u.column, rows, &lval);
    if(r != ERROR_SUCCESS)
        return r;

    switch( expr->op )
    {
    case 129:
        *val = !lval;
        break;
    case 128:
        *val = lval;
        break;
    default:
        ERR("Unknown operator %d\n", expr->op );
        return ERROR_FUNCTION_FAILED;
    }
    return ERROR_SUCCESS;
}
