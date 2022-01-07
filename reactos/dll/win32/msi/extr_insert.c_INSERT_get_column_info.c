
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
struct TYPE_8__ {TYPE_2__* sv; } ;
struct TYPE_7__ {TYPE_1__* ops; } ;
struct TYPE_6__ {int (* get_column_info ) (TYPE_2__*,int ,int *,int *,int *,int *) ;} ;
typedef TYPE_2__ MSIVIEW ;
typedef TYPE_3__ MSIINSERTVIEW ;
typedef int LPCWSTR ;
typedef int BOOL ;


 int ERROR_FUNCTION_FAILED ;
 int TRACE (char*,TYPE_3__*,int ,int *,int *,int *,int *) ;
 int stub1 (TYPE_2__*,int ,int *,int *,int *,int *) ;

__attribute__((used)) static UINT INSERT_get_column_info( struct tagMSIVIEW *view, UINT n, LPCWSTR *name,
                                    UINT *type, BOOL *temporary, LPCWSTR *table_name )
{
    MSIINSERTVIEW *iv = (MSIINSERTVIEW*)view;
    MSIVIEW *sv;

    TRACE("%p %d %p %p %p %p\n", iv, n, name, type, temporary, table_name );

    sv = iv->sv;
    if( !sv )
        return ERROR_FUNCTION_FAILED;

    return sv->ops->get_column_info( sv, n, name, type, temporary, table_name );
}
