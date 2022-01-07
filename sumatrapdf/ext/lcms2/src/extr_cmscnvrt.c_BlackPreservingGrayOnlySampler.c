
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsUInt16Number ;
typedef int cmsContext ;
struct TYPE_4__ {TYPE_1__* cmyk2cmyk; int KTone; } ;
struct TYPE_3__ {int Data; int (* Eval16Fn ) (int ,int const*,int *,int ) ;} ;
typedef TYPE_2__ GrayOnlyParams ;


 int TRUE ;
 int cmsEvalToneCurve16 (int ,int ,int const) ;
 int stub1 (int ,int const*,int *,int ) ;

__attribute__((used)) static
int BlackPreservingGrayOnlySampler(cmsContext ContextID, register const cmsUInt16Number In[], register cmsUInt16Number Out[], register void* Cargo)
{
    GrayOnlyParams* bp = (GrayOnlyParams*) Cargo;


    if (In[0] == 0 && In[1] == 0 && In[2] == 0) {


        Out[0] = Out[1] = Out[2] = 0;
        Out[3] = cmsEvalToneCurve16(ContextID, bp->KTone, In[3]);
        return TRUE;
    }


    bp ->cmyk2cmyk ->Eval16Fn(ContextID, In, Out, bp ->cmyk2cmyk->Data);
    return TRUE;
}
