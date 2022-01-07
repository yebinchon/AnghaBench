
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Section; scalar_t__ Inf; } ;
typedef TYPE_1__* PINFCONTEXT ;
typedef int * PINFCACHESECTION ;
typedef int * PINFCACHE ;


 int * InfpFindSectionById (int *,int ) ;

PINFCACHESECTION
InfpGetSectionForContext(PINFCONTEXT Context)
{
    PINFCACHE Cache;

    if (Context == ((void*)0))
    {
        return ((void*)0);
    }

    Cache = (PINFCACHE)Context->Inf;
    if (Cache == ((void*)0))
    {
        return ((void*)0);
    }

    return InfpFindSectionById(Cache, Context->Section);
}
