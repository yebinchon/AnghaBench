
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct expr* left; int op; struct expr* right; } ;
struct TYPE_4__ {int ival; int uval; TYPE_1__ expr; int column; } ;
struct expr {int type; TYPE_2__ u; } ;
typedef int UINT ;
typedef int MSIWHEREVIEW ;


 int ERR (char*) ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;

 int EXPR_COL_NUMBER ;
 int EXPR_COL_NUMBER32 ;
 int EXPR_COL_NUMBER_STRING ;


 int EXPR_STRCMP ;


 int EXPR_UVAL ;

 int FALSE ;
 int MSITYPE_STRING ;


 int TRUE ;
 int parse_column (int *,int *,int*) ;

__attribute__((used)) static UINT WHERE_VerifyCondition( MSIWHEREVIEW *wv, struct expr *cond,
                                   UINT *valid )
{
    UINT r;

    switch( cond->type )
    {
    case 135:
    {
        UINT type;

        *valid = FALSE;

        r = parse_column(wv, &cond->u.column, &type);
        if (r != ERROR_SUCCESS)
            break;

        if (type&MSITYPE_STRING)
            cond->type = EXPR_COL_NUMBER_STRING;
        else if ((type&0xff) == 4)
            cond->type = EXPR_COL_NUMBER32;
        else
            cond->type = EXPR_COL_NUMBER;

        *valid = TRUE;
        break;
    }
    case 134:
        r = WHERE_VerifyCondition( wv, cond->u.expr.left, valid );
        if( r != ERROR_SUCCESS )
            return r;
        if( !*valid )
            return ERROR_SUCCESS;
        r = WHERE_VerifyCondition( wv, cond->u.expr.right, valid );
        if( r != ERROR_SUCCESS )
            return r;


        if( ( cond->u.expr.left->type == 132 ) ||
            ( cond->u.expr.left->type == EXPR_COL_NUMBER_STRING ) ||
            ( cond->u.expr.right->type == 132 ) ||
            ( cond->u.expr.right->type == EXPR_COL_NUMBER_STRING ) )
        {
            switch( cond->u.expr.op )
            {
            case 129:
            case 128:
                break;
            default:
                *valid = FALSE;
                return ERROR_INVALID_PARAMETER;
            }



            cond->type = EXPR_STRCMP;
        }

        break;
    case 131:
        if ( cond->u.expr.left->type != 135 )
        {
            *valid = FALSE;
            return ERROR_INVALID_PARAMETER;
        }
        r = WHERE_VerifyCondition( wv, cond->u.expr.left, valid );
        if( r != ERROR_SUCCESS )
            return r;
        break;
    case 133:
        *valid = 1;
        cond->type = EXPR_UVAL;
        cond->u.uval = cond->u.ival;
        break;
    case 130:
        *valid = 1;
        break;
    case 132:
        *valid = 1;
        break;
    default:
        ERR("Invalid expression type\n");
        *valid = 0;
        break;
    }

    return ERROR_SUCCESS;
}
