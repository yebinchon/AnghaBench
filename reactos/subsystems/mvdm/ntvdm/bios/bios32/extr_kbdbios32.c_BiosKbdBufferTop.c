
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
struct TYPE_2__ {scalar_t__ KeybdBufferHead; scalar_t__ KeybdBufferTail; } ;
typedef int * LPWORD ;
typedef int BOOLEAN ;


 TYPE_1__* Bda ;
 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOLEAN BiosKbdBufferTop(LPWORD Data)
{

    if (Bda->KeybdBufferHead == Bda->KeybdBufferTail) return FALSE;


    *Data = *((LPWORD)((ULONG_PTR)Bda + Bda->KeybdBufferHead));

    return TRUE;
}
