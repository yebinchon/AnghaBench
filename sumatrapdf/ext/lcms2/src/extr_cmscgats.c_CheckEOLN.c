
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ sy; } ;
typedef TYPE_1__ cmsIT8 ;
typedef int cmsContext ;
typedef int cmsBool ;


 int Check (int ,TYPE_1__*,scalar_t__,char*) ;
 int FALSE ;
 int InSymbol (int ,TYPE_1__*) ;
 scalar_t__ SEOLN ;
 int TRUE ;

__attribute__((used)) static
cmsBool CheckEOLN(cmsContext ContextID, cmsIT8* it8)
{
        if (!Check(ContextID, it8, SEOLN, "Expected separator")) return FALSE;
        while (it8 -> sy == SEOLN)
                        InSymbol(ContextID, it8);
        return TRUE;

}
