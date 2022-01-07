
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
typedef int MSIUPDATEVIEW ;


 int ERROR_FUNCTION_FAILED ;
 int TRACE (char*,int *,int ,int ,int *) ;

__attribute__((used)) static UINT UPDATE_fetch_int( struct tagMSIVIEW *view, UINT row, UINT col, UINT *val )
{
    MSIUPDATEVIEW *uv = (MSIUPDATEVIEW*)view;

    TRACE("%p %d %d %p\n", uv, row, col, val );

    return ERROR_FUNCTION_FAILED;
}
