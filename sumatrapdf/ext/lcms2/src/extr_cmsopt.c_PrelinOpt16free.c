
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int cmsContext ;
struct TYPE_3__ {struct TYPE_3__* ParamsCurveOut16; struct TYPE_3__* EvalCurveOut16; } ;
typedef TYPE_1__ Prelin16Data ;


 int _cmsFree (int ,TYPE_1__*) ;

__attribute__((used)) static
void PrelinOpt16free(cmsContext ContextID, void* ptr)
{
    Prelin16Data* p16 = (Prelin16Data*) ptr;

    _cmsFree(ContextID, p16 ->EvalCurveOut16);
    _cmsFree(ContextID, p16 ->ParamsCurveOut16);

    _cmsFree(ContextID, p16);
}
