
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
typedef int MSIDROPVIEW ;


 int ERROR_SUCCESS ;
 int TRACE (char*,int *) ;

__attribute__((used)) static UINT DROP_close(struct tagMSIVIEW *view)
{
    MSIDROPVIEW *dv = (MSIDROPVIEW*)view;

    TRACE("%p\n", dv);

    return ERROR_SUCCESS;
}
