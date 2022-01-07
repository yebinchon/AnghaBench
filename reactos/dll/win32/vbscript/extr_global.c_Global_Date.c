
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vbdisp_t ;
typedef int VARIANT ;
struct TYPE_3__ {scalar_t__ wDayOfYear; int st; } ;
typedef TYPE_1__ UDATE ;
typedef int SYSTEMTIME ;
typedef int HRESULT ;
typedef int DATE ;


 scalar_t__ FAILED (int ) ;
 int GetLocalTime (int *) ;
 int TRACE (char*) ;
 int VAR_DATEVALUEONLY ;
 int VarDateFromUdateEx (TYPE_1__*,int ,int ,int *) ;
 int return_date (int *,int ) ;

__attribute__((used)) static HRESULT Global_Date(vbdisp_t *This, VARIANT *arg, unsigned args_cnt, VARIANT *res)
{
    SYSTEMTIME lt;
    UDATE ud;
    DATE date;
    HRESULT hres;

    TRACE("\n");

    GetLocalTime(&lt);
    ud.st = lt;
    ud.wDayOfYear = 0;
    hres = VarDateFromUdateEx(&ud, 0, VAR_DATEVALUEONLY, &date);
    if(FAILED(hres))
        return hres;
    return return_date(res, date);
}
