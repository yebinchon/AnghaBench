
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sy; } ;
typedef TYPE_1__ cmsIT8 ;
typedef int cmsContext ;


 int InSymbol (int ,TYPE_1__*) ;
 scalar_t__ SEOLN ;

__attribute__((used)) static
void SkipEOLN(cmsContext ContextID, cmsIT8* it8)
{
    while (it8->sy == SEOLN) {
             InSymbol(ContextID, it8);
    }
}
