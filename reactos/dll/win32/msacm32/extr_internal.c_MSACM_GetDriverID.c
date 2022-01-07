
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PWINE_ACMDRIVERID ;
typedef int HACMOBJ ;
typedef scalar_t__ HACMDRIVERID ;


 int MSACM_GetObj (int ,int ) ;
 int WINE_ACMOBJ_DRIVERID ;

PWINE_ACMDRIVERID MSACM_GetDriverID(HACMDRIVERID hDriverID)
{
    return (PWINE_ACMDRIVERID)MSACM_GetObj((HACMOBJ)hDriverID, WINE_ACMOBJ_DRIVERID);
}
