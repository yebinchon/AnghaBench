
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PWINE_ACMDRIVER ;
typedef int HACMOBJ ;
typedef scalar_t__ HACMDRIVER ;


 int MSACM_GetObj (int ,int ) ;
 int WINE_ACMOBJ_DRIVER ;

PWINE_ACMDRIVER MSACM_GetDriver(HACMDRIVER hDriver)
{
    return (PWINE_ACMDRIVER)MSACM_GetObj((HACMOBJ)hDriver, WINE_ACMOBJ_DRIVER);
}
