
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
typedef int MSICREATEVIEW ;
typedef int LPCWSTR ;
typedef int BOOL ;


 int ERROR_FUNCTION_FAILED ;
 int TRACE (char*,int *,int ,int *,int *,int *,int *) ;

__attribute__((used)) static UINT CREATE_get_column_info( struct tagMSIVIEW *view, UINT n, LPCWSTR *name,
                                    UINT *type, BOOL *temporary, LPCWSTR *table_name )
{
    MSICREATEVIEW *cv = (MSICREATEVIEW*)view;

    TRACE("%p %d %p %p %p %p\n", cv, n, name, type, temporary, table_name );

    return ERROR_FUNCTION_FAILED;
}
