
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_4__ {int Mode; } ;
typedef TYPE_1__* PPIT_CHANNEL ;


 int FALSE ;






 int PitSetOut (TYPE_1__*,int ) ;
 int TRUE ;

__attribute__((used)) static VOID PitInitCounter(PPIT_CHANNEL Channel)
{
    switch (Channel->Mode)
    {
        case 131:
            PitSetOut(Channel, FALSE);
            break;

        case 133:
        case 130:
        case 128:
        case 129:
        case 132:
            PitSetOut(Channel, TRUE);
            break;
    }
}
