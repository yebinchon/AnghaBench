
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
cmsBool _Remove1Op(cmsContext ContextID, cmsPipeline* Lut, cmsStageSignature UnaryOp)
{
    cmsStage** pt = &Lut ->Elements;
    cmsBool AnyOpt = FALSE;

    while (*pt != ((void*)0)) {

        if ((*pt) ->Implements == UnaryOp) {
            _RemoveElement(ContextID, pt);
            AnyOpt = TRUE;
        }
        else
            pt = &((*pt) -> Next);
    }

    return AnyOpt;
}
