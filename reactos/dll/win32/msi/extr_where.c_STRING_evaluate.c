
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * sval; int column; } ;
struct expr {int type; TYPE_2__ u; } ;
typedef int WCHAR ;
typedef int UINT ;
struct TYPE_7__ {int rec_index; TYPE_1__* db; } ;
struct TYPE_5__ {int strings; } ;
typedef TYPE_3__ MSIWHEREVIEW ;
typedef int MSIRECORD ;


 int ERR (char*) ;
 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;



 int * MSI_RecordGetString (int const*,int ) ;
 int expr_fetch_value (int *,int const*,int *) ;
 int * msi_string_lookup (int ,int ,int *) ;

__attribute__((used)) static UINT STRING_evaluate( MSIWHEREVIEW *wv, const UINT rows[],
                                     const struct expr *expr,
                                     const MSIRECORD *record,
                                     const WCHAR **str )
{
    UINT val = 0, r = ERROR_SUCCESS;

    switch( expr->type )
    {
    case 130:
        r = expr_fetch_value(&expr->u.column, rows, &val);
        if (r == ERROR_SUCCESS)
            *str = msi_string_lookup(wv->db->strings, val, ((void*)0));
        else
            *str = ((void*)0);
        break;

    case 129:
        *str = expr->u.sval;
        break;

    case 128:
        *str = MSI_RecordGetString(record, ++wv->rec_index);
        break;

    default:
        ERR("Invalid expression type\n");
        r = ERROR_FUNCTION_FAILED;
        *str = ((void*)0);
        break;
    }
    return r;
}
