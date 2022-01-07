
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ Implements; struct TYPE_10__* Next; } ;
typedef TYPE_1__ cmsStage ;
struct TYPE_11__ {TYPE_1__* Elements; } ;
typedef TYPE_2__ cmsPipeline ;
typedef int cmsMAT3 ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_12__ {scalar_t__ Double; int * Offset; } ;
typedef TYPE_3__ _cmsStageMatrixData ;


 int FALSE ;
 int TRUE ;
 int _RemoveElement (int ,TYPE_1__**) ;
 int _cmsMAT3per (int ,int *,int *,int *) ;
 scalar_t__ cmsSigMatrixElemType ;
 TYPE_1__* cmsStageAllocMatrix (int ,int,int,int const*,int *) ;
 scalar_t__ cmsStageData (int ,TYPE_1__*) ;
 int cmsStageInputChannels (int ,TYPE_1__*) ;
 int cmsStageOutputChannels (int ,TYPE_1__*) ;
 int isFloatMatrixIdentity (int ,int *) ;

__attribute__((used)) static
cmsBool _MultiplyMatrix(cmsContext ContextID, cmsPipeline* Lut)
{
       cmsStage** pt1;
       cmsStage** pt2;
       cmsStage* chain;
       cmsBool AnyOpt = FALSE;

       pt1 = &Lut->Elements;
       if (*pt1 == ((void*)0)) return AnyOpt;

       while (*pt1 != ((void*)0)) {

              pt2 = &((*pt1)->Next);
              if (*pt2 == ((void*)0)) return AnyOpt;

              if ((*pt1)->Implements == cmsSigMatrixElemType && (*pt2)->Implements == cmsSigMatrixElemType) {


                     _cmsStageMatrixData* m1 = (_cmsStageMatrixData*) cmsStageData(ContextID, *pt1);
                     _cmsStageMatrixData* m2 = (_cmsStageMatrixData*) cmsStageData(ContextID, *pt2);
                     cmsMAT3 res;


                     if (m1->Offset != ((void*)0) || m2 ->Offset != ((void*)0) ||
                            cmsStageInputChannels(ContextID, *pt1) != 3 || cmsStageOutputChannels(ContextID, *pt1) != 3 ||
                            cmsStageInputChannels(ContextID, *pt2) != 3 || cmsStageOutputChannels(ContextID, *pt2) != 3)
                            return FALSE;


                     _cmsMAT3per(ContextID, &res, (cmsMAT3*)m2->Double, (cmsMAT3*)m1->Double);


                     chain = (*pt2)->Next;


                     _RemoveElement(ContextID, pt2);
                     _RemoveElement(ContextID, pt1);


                     if (!isFloatMatrixIdentity(ContextID, &res)) {


                            cmsStage* Multmat = cmsStageAllocMatrix(ContextID, 3, 3, (const cmsFloat64Number*) &res, ((void*)0));
                            if (Multmat == ((void*)0)) return FALSE;


                            Multmat->Next = chain;
                            *pt1 = Multmat;
                     }

                     AnyOpt = TRUE;
              }
              else
                     pt1 = &((*pt1)->Next);
       }

       return AnyOpt;
}
