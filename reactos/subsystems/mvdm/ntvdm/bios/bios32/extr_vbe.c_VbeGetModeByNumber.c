
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
struct TYPE_4__ {int Number; int VesaNumber; } ;
typedef TYPE_1__* PCVBE_MODE ;
typedef size_t INT ;


 TYPE_1__* Modes ;
 size_t VBE_MODE_COUNT ;

PCVBE_MODE VbeGetModeByNumber(WORD Number)
{
    INT i;

    Number &= 0x1FF;


    for (i = 0; i < VBE_MODE_COUNT; i++)
    {
        if ((!(Number & 0x100) && (Number == Modes[i].Number))
            || ((Number & 0x100) && (Number== Modes[i].VesaNumber)))
        {
            return &Modes[i];
        }
    }

    return ((void*)0);
}
