
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
typedef int MSIDROPVIEW ;


 int ERROR_FUNCTION_FAILED ;
 int TRACE (char*,int *,int *,int *) ;

__attribute__((used)) static UINT DROP_get_dimensions(struct tagMSIVIEW *view, UINT *rows, UINT *cols)
{
    MSIDROPVIEW *dv = (MSIDROPVIEW*)view;

    TRACE("%p %p %p\n", dv, rows, cols);

    return ERROR_FUNCTION_FAILED;
}
