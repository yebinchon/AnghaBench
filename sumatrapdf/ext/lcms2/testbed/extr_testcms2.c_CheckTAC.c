
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;


 int CheckOneTAC (int) ;

__attribute__((used)) static
cmsInt32Number CheckTAC(void)
{
    if (!CheckOneTAC(180)) return 0;
    if (!CheckOneTAC(220)) return 0;
    if (!CheckOneTAC(286)) return 0;
    if (!CheckOneTAC(310)) return 0;
    if (!CheckOneTAC(330)) return 0;

    return 1;
}
