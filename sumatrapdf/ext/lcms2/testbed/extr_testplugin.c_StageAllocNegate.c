
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsStage ;
typedef int cmsContext ;


 int EvaluateNegate ;
 int SigNegateType ;
 int * _cmsStageAllocPlaceholder (int ,int ,int,int,int ,int *,int *,int *) ;

__attribute__((used)) static
cmsStage* StageAllocNegate(cmsContext ContextID)
{
    return _cmsStageAllocPlaceholder(ContextID,
                 SigNegateType, 3, 3, EvaluateNegate,
                 ((void*)0), ((void*)0), ((void*)0));
}
