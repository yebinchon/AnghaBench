
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int Buffer; } ;
typedef TYPE_1__* PANSI_STRING ;


 int AddToRingBuffer (int ) ;
 int DPRINT (int ) ;
 int FALSE ;
 int bIsDebugPrint ;
 int cli () ;
 int restore_flags (int ) ;
 int save_flags (int ) ;

ULONG PICE_KdpPrintString(PANSI_STRING String)
{
 ULONG ulRingBufferLock;

  save_flags(ulRingBufferLock);
  cli();


  bIsDebugPrint = FALSE;

 DPRINT((0,"PICE_KdpPrintString\n\n\n"));
  AddToRingBuffer(String->Buffer);
  restore_flags(ulRingBufferLock);
}
