
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
typedef int MSICREATEVIEW ;


 int ERROR_FUNCTION_FAILED ;
 int TRACE (char*,int *,int *,int *) ;

__attribute__((used)) static UINT CREATE_get_dimensions( struct tagMSIVIEW *view, UINT *rows, UINT *cols )
{
    MSICREATEVIEW *cv = (MSICREATEVIEW*)view;

    TRACE("%p %p %p\n", cv, rows, cols );

    return ERROR_FUNCTION_FAILED;
}
