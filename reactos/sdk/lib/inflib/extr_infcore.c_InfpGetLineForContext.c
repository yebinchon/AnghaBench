
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Line; } ;
typedef TYPE_1__* PINFCONTEXT ;
typedef int * PINFCACHESECTION ;
typedef int * PINFCACHELINE ;


 int * InfpFindLineById (int *,int ) ;
 int * InfpGetSectionForContext (TYPE_1__*) ;

PINFCACHELINE
InfpGetLineForContext(PINFCONTEXT Context)
{
    PINFCACHESECTION Section;

    Section = InfpGetSectionForContext(Context);
    if (Section == ((void*)0))
    {
        return ((void*)0);
    }

    return InfpFindLineById(Section, Context->Line);
}
