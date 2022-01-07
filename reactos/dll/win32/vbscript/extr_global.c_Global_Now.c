
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbdisp_t ;
typedef int VARIANT ;
typedef int SYSTEMTIME ;
typedef int HRESULT ;


 int GetLocalTime (int *) ;
 int SystemTimeToVariantTime (int *,double*) ;
 int TRACE (char*) ;
 int return_date (int *,double) ;

__attribute__((used)) static HRESULT Global_Now(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    SYSTEMTIME lt;
    double date;

    TRACE("\n");

    GetLocalTime(&lt);
    SystemTimeToVariantTime(&lt, &date);
    return return_date(res, date);
}
