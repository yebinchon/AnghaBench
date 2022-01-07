
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sy; } ;
typedef TYPE_1__ cmsIT8 ;
typedef int cmsContext ;
typedef scalar_t__ SYMBOL ;


 int InSymbol (int ,TYPE_1__*) ;
 scalar_t__ SEOF ;

__attribute__((used)) static
void Skip(cmsContext ContextID, cmsIT8* it8, SYMBOL sy)
{
        if (it8->sy == sy && it8->sy != SEOF)
                        InSymbol(ContextID, it8);
}
