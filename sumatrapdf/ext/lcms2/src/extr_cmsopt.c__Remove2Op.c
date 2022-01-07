
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ cmsStageSignature ;
struct TYPE_5__ {scalar_t__ Implements; struct TYPE_5__* Next; } ;
typedef TYPE_1__ cmsStage ;
struct TYPE_6__ {TYPE_1__* Elements; } ;
typedef TYPE_2__ cmsPipeline ;
typedef int cmsContext ;
typedef int cmsBool ;


 int FALSE ;
 int TRUE ;
 int _RemoveElement (int ,TYPE_1__**) ;

__attribute__((used)) static
cmsBool _Remove2Op(cmsContext ContextID, cmsPipeline* Lut, cmsStageSignature Op1, cmsStageSignature Op2)
{
    cmsStage** pt1;
    cmsStage** pt2;
    cmsBool AnyOpt = FALSE;

    pt1 = &Lut ->Elements;
    if (*pt1 == ((void*)0)) return AnyOpt;

    while (*pt1 != ((void*)0)) {

        pt2 = &((*pt1) -> Next);
        if (*pt2 == ((void*)0)) return AnyOpt;

        if ((*pt1) ->Implements == Op1 && (*pt2) ->Implements == Op2) {
            _RemoveElement(ContextID, pt2);
            _RemoveElement(ContextID, pt1);
            AnyOpt = TRUE;
        }
        else
            pt1 = &((*pt1) -> Next);
    }

    return AnyOpt;
}
