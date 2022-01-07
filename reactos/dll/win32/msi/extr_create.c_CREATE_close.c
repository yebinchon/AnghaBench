
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
typedef int MSICREATEVIEW ;


 int ERROR_SUCCESS ;
 int TRACE (char*,int *) ;

__attribute__((used)) static UINT CREATE_close( struct tagMSIVIEW *view )
{
    MSICREATEVIEW *cv = (MSICREATEVIEW*)view;

    TRACE("%p\n", cv);

    return ERROR_SUCCESS;
}
