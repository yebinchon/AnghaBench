
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VARIANT ;
typedef size_t UINT ;
struct TYPE_3__ {size_t cArgs; size_t cNamedArgs; size_t* rgdispidNamedArgs; int * rgvarg; } ;
typedef int HRESULT ;
typedef TYPE_1__ DISPPARAMS ;


 int DISP_E_PARAMNOTFOUND ;
 int TRACE (char*,size_t,size_t,size_t) ;
 int VariantCopyInd (int *,int *) ;

__attribute__((used)) static HRESULT DispGetParam_CopyOnly(
        DISPPARAMS *pdispparams,
        UINT *position,
        VARIANT *pvarResult)
{

    UINT pos;

    TRACE("position=%d, cArgs=%d, cNamedArgs=%d\n",
          *position, pdispparams->cArgs, pdispparams->cNamedArgs);
    if (*position < pdispparams->cArgs) {

      pos = pdispparams->cArgs - *position - 1;
    } else {

      for (pos=0; pos<pdispparams->cNamedArgs; pos++)
        if (pdispparams->rgdispidNamedArgs[pos] == *position) break;

      if (pos==pdispparams->cNamedArgs)
        return DISP_E_PARAMNOTFOUND;
    }
    *position = pos;
    return VariantCopyInd(pvarResult,
                        &pdispparams->rgvarg[pos]);
}
