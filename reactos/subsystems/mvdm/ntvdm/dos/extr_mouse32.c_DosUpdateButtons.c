
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
typedef int USHORT ;
struct TYPE_2__ {int ButtonState; int Position; int * LastRelease; int * ReleaseCount; int * LastPress; int * PressCount; } ;
typedef int BYTE ;
typedef scalar_t__ BOOLEAN ;


 int CallMouseUserHandlers (int) ;
 TYPE_1__ DriverState ;
 int NUM_MOUSE_BUTTONS ;

__attribute__((used)) static inline VOID DosUpdateButtons(BYTE ButtonState)
{
    USHORT i;
    USHORT CallMask = 0x0000;

    for (i = 0; i < NUM_MOUSE_BUTTONS; i++)
    {
        BOOLEAN OldState = (DriverState.ButtonState >> i) & 1;
        BOOLEAN NewState = (ButtonState >> i) & 1;

        if (NewState > OldState)
        {

            DriverState.PressCount[i]++;
            DriverState.LastPress[i] = DriverState.Position;

            CallMask |= (1 << (2 * i + 1));
        }
        else if (NewState < OldState)
        {

            DriverState.ReleaseCount[i]++;
            DriverState.LastRelease[i] = DriverState.Position;

            CallMask |= (1 << (2 * i + 2));
        }
    }

    DriverState.ButtonState = ButtonState;


    CallMouseUserHandlers(CallMask);
}
