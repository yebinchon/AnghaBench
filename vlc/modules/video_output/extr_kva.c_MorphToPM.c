
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pib_ultype; } ;
typedef TYPE_1__* PPIB ;


 int DosGetInfoBlocks (int *,TYPE_1__**) ;

__attribute__((used)) static void MorphToPM( void )
{
    PPIB pib;

    DosGetInfoBlocks(((void*)0), &pib);


    if (pib->pib_ultype == 2)
        pib->pib_ultype = 3;
}
