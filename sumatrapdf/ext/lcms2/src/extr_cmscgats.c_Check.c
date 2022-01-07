
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sy; } ;
typedef TYPE_1__ cmsIT8 ;
typedef int cmsContext ;
typedef int cmsBool ;
typedef scalar_t__ SYMBOL ;


 int NoMeta (char const*) ;
 int SynError (int ,TYPE_1__*,int ) ;
 int TRUE ;

__attribute__((used)) static
cmsBool Check(cmsContext ContextID, cmsIT8* it8, SYMBOL sy, const char* Err)
{
        if (it8 -> sy != sy)
                return SynError(ContextID, it8, NoMeta(Err));
        return TRUE;
}
