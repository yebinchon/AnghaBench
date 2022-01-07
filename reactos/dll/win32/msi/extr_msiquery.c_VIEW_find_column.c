
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {scalar_t__ (* get_dimensions ) (TYPE_2__*,int *,scalar_t__*) ;scalar_t__ (* get_column_info ) (TYPE_2__*,scalar_t__,scalar_t__*,int *,int *,scalar_t__*) ;} ;
typedef TYPE_2__ MSIVIEW ;
typedef scalar_t__ LPCWSTR ;
typedef int INT ;


 scalar_t__ ERROR_INVALID_PARAMETER ;
 scalar_t__ ERROR_SUCCESS ;
 int strcmpW (scalar_t__,scalar_t__) ;
 scalar_t__ stub1 (TYPE_2__*,int *,scalar_t__*) ;
 scalar_t__ stub2 (TYPE_2__*,scalar_t__,scalar_t__*,int *,int *,scalar_t__*) ;

UINT VIEW_find_column( MSIVIEW *table, LPCWSTR name, LPCWSTR table_name, UINT *n )
{
    LPCWSTR col_name, haystack_table_name;
    UINT i, count, r;

    r = table->ops->get_dimensions( table, ((void*)0), &count );
    if( r != ERROR_SUCCESS )
        return r;

    for( i=1; i<=count; i++ )
    {
        INT x;

        r = table->ops->get_column_info( table, i, &col_name, ((void*)0),
                                         ((void*)0), &haystack_table_name );
        if( r != ERROR_SUCCESS )
            return r;
        x = strcmpW( name, col_name );
        if( table_name )
            x |= strcmpW( table_name, haystack_table_name );
        if( !x )
        {
            *n = i;
            return ERROR_SUCCESS;
        }
    }
    return ERROR_INVALID_PARAMETER;
}
