
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int expr; int uval; int column; } ;
struct expr {int type; TYPE_1__ u; } ;
typedef int UINT ;
struct TYPE_8__ {int rec_index; } ;
typedef TYPE_2__ MSIWHEREVIEW ;
typedef int MSIRECORD ;
typedef int INT ;


 int ERR (char*) ;
 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;







 int INT_evaluate_binary (TYPE_2__*,int const*,int *,int *,int *) ;
 int INT_evaluate_unary (TYPE_2__*,int const*,int *,int *,int *) ;
 int MSI_RecordGetInteger (int *,int ) ;
 int STRCMP_Evaluate (TYPE_2__*,int const*,int *,int *,int *) ;
 int TRUE ;
 int expr_fetch_value (int *,int const*,int *) ;

__attribute__((used)) static UINT WHERE_evaluate( MSIWHEREVIEW *wv, const UINT rows[],
                            struct expr *cond, INT *val, MSIRECORD *record )
{
    UINT r, tval;

    if( !cond )
    {
        *val = TRUE;
        return ERROR_SUCCESS;
    }

    switch( cond->type )
    {
    case 134:
        r = expr_fetch_value(&cond->u.column, rows, &tval);
        if( r != ERROR_SUCCESS )
            return r;
        *val = tval - 0x8000;
        return ERROR_SUCCESS;

    case 133:
        r = expr_fetch_value(&cond->u.column, rows, &tval);
        if( r != ERROR_SUCCESS )
            return r;
        *val = tval - 0x80000000;
        return r;

    case 129:
        *val = cond->u.uval;
        return ERROR_SUCCESS;

    case 132:
        return INT_evaluate_binary(wv, rows, &cond->u.expr, val, record);

    case 130:
        return INT_evaluate_unary( wv, rows, &cond->u.expr, val, record );

    case 131:
        return STRCMP_Evaluate( wv, rows, &cond->u.expr, val, record );

    case 128:
        *val = MSI_RecordGetInteger( record, ++wv->rec_index );
        return ERROR_SUCCESS;

    default:
        ERR("Invalid expression type\n");
        return ERROR_FUNCTION_FAILED;
    }

    return ERROR_SUCCESS;
}
