
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_6__ {scalar_t__ Id; struct TYPE_6__* Next; } ;
struct TYPE_5__ {TYPE_2__* FirstLine; } ;
typedef TYPE_1__* PINFCACHESECTION ;
typedef TYPE_2__* PINFCACHELINE ;



PINFCACHELINE
InfpFindLineById(PINFCACHESECTION Section, UINT Id)
{
    PINFCACHELINE Line;

    for (Line = Section->FirstLine;
         Line != ((void*)0);
         Line = Line->Next)
    {
        if (Line->Id == Id)
        {
            return Line;
        }
    }

    return ((void*)0);
}
