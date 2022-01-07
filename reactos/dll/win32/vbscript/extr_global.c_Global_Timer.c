
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vbdisp_t ;
typedef int VARIANT ;
struct TYPE_3__ {int wHour; int wMinute; int wSecond; double wMilliseconds; } ;
typedef TYPE_1__ SYSTEMTIME ;
typedef int HRESULT ;


 int GetLocalTime (TYPE_1__*) ;
 int return_float (int *,double) ;

__attribute__((used)) static HRESULT Global_Timer(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    SYSTEMTIME lt;
    double sec;

    GetLocalTime(&lt);
    sec = lt.wHour * 3600 + lt.wMinute * 60 + lt.wSecond + lt.wMilliseconds / 1000.0;
    return return_float(res, sec);

}
