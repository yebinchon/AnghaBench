
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {int num_cols; int* cols; TYPE_3__* table; } ;
struct TYPE_5__ {int (* get_column_info ) (TYPE_3__*,int,int *,int*,int *,int *) ;} ;
typedef TYPE_2__ MSISELECTVIEW ;
typedef int LPCWSTR ;
typedef int BOOL ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_SUCCESS ;
 int FALSE ;
 int MSITYPE_UNKNOWN ;
 int MSITYPE_VALID ;
 int TRACE (char*,TYPE_2__*,int,int *,int*,int *,int *) ;
 int stub1 (TYPE_3__*,int,int *,int*,int *,int *) ;
 int szEmpty ;

__attribute__((used)) static UINT SELECT_get_column_info( struct tagMSIVIEW *view, UINT n, LPCWSTR *name,
                                    UINT *type, BOOL *temporary, LPCWSTR *table_name )
{
    MSISELECTVIEW *sv = (MSISELECTVIEW*)view;

    TRACE("%p %d %p %p %p %p\n", sv, n, name, type, temporary, table_name );

    if( !sv->table )
         return ERROR_FUNCTION_FAILED;

    if( !n || n > sv->num_cols )
         return ERROR_FUNCTION_FAILED;

    n = sv->cols[ n - 1 ];
    if( !n )
    {
        if (name) *name = szEmpty;
        if (type) *type = MSITYPE_UNKNOWN | MSITYPE_VALID;
        if (temporary) *temporary = FALSE;
        if (table_name) *table_name = szEmpty;
        return ERROR_SUCCESS;
    }
    return sv->table->ops->get_column_info( sv->table, n, name,
                                            type, temporary, table_name );
}
