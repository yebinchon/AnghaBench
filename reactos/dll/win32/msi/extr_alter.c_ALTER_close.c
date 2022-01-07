
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
typedef int MSIALTERVIEW ;


 int ERROR_SUCCESS ;
 int TRACE (char*,int *) ;

__attribute__((used)) static UINT ALTER_close( struct tagMSIVIEW *view )
{
    MSIALTERVIEW *av = (MSIALTERVIEW*)view;

    TRACE("%p\n", av );

    return ERROR_SUCCESS;
}
