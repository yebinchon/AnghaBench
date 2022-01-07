
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Eval16Fn; } ;
typedef TYPE_1__ cmsPipeline ;
typedef int cmsBool ;


 scalar_t__ FastIdentity16 ;

cmsBool _cmsLutIsIdentity(cmsPipeline *PtrLut)
{
    return !PtrLut || PtrLut->Eval16Fn == FastIdentity16;
}
