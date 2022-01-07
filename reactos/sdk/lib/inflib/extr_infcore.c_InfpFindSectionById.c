
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {TYPE_1__* FirstSection; } ;
struct TYPE_5__ {scalar_t__ Id; struct TYPE_5__* Next; } ;
typedef TYPE_1__* PINFCACHESECTION ;
typedef TYPE_2__* PINFCACHE ;



PINFCACHESECTION
InfpFindSectionById(PINFCACHE Cache, UINT Id)
{
    PINFCACHESECTION Section;

    for (Section = Cache->FirstSection;
         Section != ((void*)0);
         Section = Section->Next)
    {
        if (Section->Id == Id)
        {
            return Section;
        }
    }

    return ((void*)0);
}
