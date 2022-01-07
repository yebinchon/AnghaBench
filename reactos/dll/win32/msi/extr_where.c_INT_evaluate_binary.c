
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct complex_expr {int op; int right; int left; } ;
typedef scalar_t__ UINT ;
typedef int MSIWHEREVIEW ;
typedef int MSIRECORD ;
typedef scalar_t__ INT ;


 int ERR (char*,int) ;
 scalar_t__ ERROR_CONTINUE ;
 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ WHERE_evaluate (int *,scalar_t__ const*,int ,scalar_t__*,int *) ;

__attribute__((used)) static INT INT_evaluate_binary( MSIWHEREVIEW *wv, const UINT rows[],
                                const struct complex_expr *expr, INT *val, MSIRECORD *record )
{
    UINT rl, rr;
    INT lval, rval;

    rl = WHERE_evaluate(wv, rows, expr->left, &lval, record);
    if (rl != ERROR_SUCCESS && rl != ERROR_CONTINUE)
        return rl;
    rr = WHERE_evaluate(wv, rows, expr->right, &rval, record);
    if (rr != ERROR_SUCCESS && rr != ERROR_CONTINUE)
        return rr;

    if (rl == ERROR_CONTINUE || rr == ERROR_CONTINUE)
    {
        if (rl == rr)
        {
            *val = TRUE;
            return ERROR_CONTINUE;
        }

        if (expr->op == 135)
        {
            if ((rl == ERROR_CONTINUE && !rval) || (rr == ERROR_CONTINUE && !lval))
            {
                *val = FALSE;
                return ERROR_SUCCESS;
            }
        }
        else if (expr->op == 128)
        {
            if ((rl == ERROR_CONTINUE && rval) || (rr == ERROR_CONTINUE && lval))
            {
                *val = TRUE;
                return ERROR_SUCCESS;
            }
        }

        *val = TRUE;
        return ERROR_CONTINUE;
    }

    switch( expr->op )
    {
    case 134:
        *val = ( lval == rval );
        break;
    case 135:
        *val = ( lval && rval );
        break;
    case 128:
        *val = ( lval || rval );
        break;
    case 132:
        *val = ( lval > rval );
        break;
    case 130:
        *val = ( lval < rval );
        break;
    case 131:
        *val = ( lval <= rval );
        break;
    case 133:
        *val = ( lval >= rval );
        break;
    case 129:
        *val = ( lval != rval );
        break;
    default:
        ERR("Unknown operator %d\n", expr->op );
        return ERROR_FUNCTION_FAILED;
    }

    return ERROR_SUCCESS;
}
