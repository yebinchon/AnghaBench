
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t cmsUInt32Number ;
typedef int cmsContext ;
struct TYPE_2__ {size_t nCurves; void** Curves; } ;
typedef TYPE_1__ Curves16Data ;


 int _cmsFree (int ,void*) ;

__attribute__((used)) static
void CurvesFree(cmsContext ContextID, void* ptr)
{
     Curves16Data* Data = (Curves16Data*) ptr;
     cmsUInt32Number i;

     for (i=0; i < Data -> nCurves; i++) {

         _cmsFree(ContextID, Data ->Curves[i]);
     }

     _cmsFree(ContextID, Data ->Curves);
     _cmsFree(ContextID, ptr);
}
