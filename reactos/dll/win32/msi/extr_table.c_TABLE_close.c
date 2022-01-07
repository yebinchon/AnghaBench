
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;


 int ERROR_SUCCESS ;
 int TRACE (char*,struct tagMSIVIEW*) ;

__attribute__((used)) static UINT TABLE_close( struct tagMSIVIEW *view )
{
    TRACE("%p\n", view );

    return ERROR_SUCCESS;
}
