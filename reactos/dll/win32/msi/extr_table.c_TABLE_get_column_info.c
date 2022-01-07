
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_5__ {int num_cols; TYPE_1__* columns; } ;
struct TYPE_4__ {int type; int temporary; int tablename; int colname; } ;
typedef TYPE_2__ MSITABLEVIEW ;
typedef int LPCWSTR ;
typedef int BOOL ;


 int ERROR_FUNCTION_FAILED ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_SUCCESS ;
 int TRACE (char*,TYPE_2__*,int,int *,int*) ;

__attribute__((used)) static UINT TABLE_get_column_info( struct tagMSIVIEW *view,
                UINT n, LPCWSTR *name, UINT *type, BOOL *temporary,
                LPCWSTR *table_name )
{
    MSITABLEVIEW *tv = (MSITABLEVIEW*)view;

    TRACE("%p %d %p %p\n", tv, n, name, type );

    if( ( n == 0 ) || ( n > tv->num_cols ) )
        return ERROR_INVALID_PARAMETER;

    if( name )
    {
        *name = tv->columns[n-1].colname;
        if( !*name )
            return ERROR_FUNCTION_FAILED;
    }

    if( table_name )
    {
        *table_name = tv->columns[n-1].tablename;
        if( !*table_name )
            return ERROR_FUNCTION_FAILED;
    }

    if( type )
        *type = tv->columns[n-1].type;

    if( temporary )
        *temporary = tv->columns[n-1].temporary;

    return ERROR_SUCCESS;
}
