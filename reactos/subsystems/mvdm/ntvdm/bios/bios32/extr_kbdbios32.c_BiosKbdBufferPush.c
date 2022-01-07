
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ WORD ;
typedef scalar_t__ ULONG_PTR ;
struct TYPE_2__ {scalar_t__ KeybdBufferTail; scalar_t__ KeybdBufferEnd; scalar_t__ KeybdBufferStart; scalar_t__ KeybdBufferHead; } ;
typedef scalar_t__* LPWORD ;
typedef int BOOLEAN ;


 TYPE_1__* Bda ;
 int DPRINT1 (char*) ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOLEAN BiosKbdBufferPush(WORD Data)
{

    WORD NextElement = Bda->KeybdBufferTail + sizeof(WORD);


    if (NextElement >= Bda->KeybdBufferEnd) NextElement = Bda->KeybdBufferStart;


    if (NextElement == Bda->KeybdBufferHead)
    {
        DPRINT1("BIOS keyboard buffer full.\n");
        return FALSE;
    }


    *((LPWORD)((ULONG_PTR)Bda + Bda->KeybdBufferTail)) = Data;
    Bda->KeybdBufferTail = NextElement;


    return TRUE;
}
