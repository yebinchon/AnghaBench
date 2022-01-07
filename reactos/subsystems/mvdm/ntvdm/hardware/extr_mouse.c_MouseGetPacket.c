
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
typedef int UCHAR ;
struct TYPE_4__ {int Extra; void* VertCounter; void* HorzCounter; int Flags; } ;
typedef TYPE_1__* PMOUSE_PACKET ;


 int ButtonState ;
 int FROM_LEFT_1ST_BUTTON_PRESSED ;
 int FROM_LEFT_2ND_BUTTON_PRESSED ;
 int FROM_LEFT_3RD_BUTTON_PRESSED ;
 int FROM_LEFT_4TH_BUTTON_PRESSED ;
 int HorzCounter ;
 int INFINITE ;
 void* LOBYTE (int ) ;
 int MOUSE_4TH_BUTTON ;
 int MOUSE_5TH_BUTTON ;
 int MOUSE_ALWAYS_SET ;
 int MOUSE_LEFT_BUTTON ;
 int MOUSE_MAX ;
 int MOUSE_MIDDLE_BUTTON ;
 int MOUSE_RIGHT_BUTTON ;
 int MOUSE_X_OVERFLOW ;
 int MOUSE_X_SIGN ;
 int MOUSE_Y_OVERFLOW ;
 int MOUSE_Y_SIGN ;
 int MouseId ;
 int MouseMutex ;
 int MouseResetCounters () ;
 int RIGHTMOST_BUTTON_PRESSED ;
 int ReleaseMutex (int ) ;
 int RtlZeroMemory (TYPE_1__*,int) ;
 scalar_t__ ScrollCounter ;
 int VertCounter ;
 int WaitForSingleObject (int ,int ) ;

__attribute__((used)) static VOID MouseGetPacket(PMOUSE_PACKET Packet)
{

    RtlZeroMemory(Packet, sizeof(*Packet));


    WaitForSingleObject(MouseMutex, INFINITE);

    Packet->Flags |= MOUSE_ALWAYS_SET;


    if (HorzCounter < 0)
    {
        Packet->Flags |= MOUSE_X_SIGN;
        HorzCounter = -HorzCounter;
    }

    if (VertCounter < 0)
    {
        Packet->Flags |= MOUSE_Y_SIGN;
        VertCounter = -VertCounter;
    }


    if (HorzCounter > MOUSE_MAX)
    {
        HorzCounter = MOUSE_MAX;
        Packet->Flags |= MOUSE_X_OVERFLOW;
    }


    if (VertCounter > MOUSE_MAX)
    {
        VertCounter = MOUSE_MAX;
        Packet->Flags |= MOUSE_Y_OVERFLOW;
    }


    if (ButtonState & FROM_LEFT_1ST_BUTTON_PRESSED) Packet->Flags |= MOUSE_LEFT_BUTTON;
    if (ButtonState & FROM_LEFT_2ND_BUTTON_PRESSED) Packet->Flags |= MOUSE_MIDDLE_BUTTON;
    if (ButtonState & RIGHTMOST_BUTTON_PRESSED) Packet->Flags |= MOUSE_RIGHT_BUTTON;

    if (MouseId == 4)
    {
        if (ButtonState & FROM_LEFT_3RD_BUTTON_PRESSED) Packet->Extra |= MOUSE_4TH_BUTTON;
        if (ButtonState & FROM_LEFT_4TH_BUTTON_PRESSED) Packet->Extra |= MOUSE_5TH_BUTTON;
    }

    if (MouseId >= 3)
    {

        Packet->Extra |= ((UCHAR)ScrollCounter & 0x0F);
    }


    Packet->HorzCounter = LOBYTE(HorzCounter);
    Packet->VertCounter = LOBYTE(VertCounter);


    MouseResetCounters();


    ReleaseMutex(MouseMutex);
}
