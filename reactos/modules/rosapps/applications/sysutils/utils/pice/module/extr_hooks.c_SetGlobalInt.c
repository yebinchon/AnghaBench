
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct IdtEntry {int HiOffset; int LoOffset; int SegSel; } ;
typedef void* USHORT ;
typedef int ULONG ;


 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 int LEAVE_FUNC () ;

ULONG SetGlobalInt(ULONG dwInt,ULONG NewIntHandler)
{
    ULONG idt[2];
    ULONG OldIntHandler;
    struct IdtEntry* pidt;
    struct IdtEntry oldidt;

    ENTER_FUNC();


 __asm__("sidt %0":"=m" (idt));


 pidt=((struct IdtEntry*)((idt[1]<<16)|((idt[0]>>16)&0x0000FFFF)))+dwInt;

 oldidt=*pidt;


 pidt->HiOffset=(USHORT)(((ULONG)NewIntHandler)>>16);
 pidt->LoOffset=(USHORT)(((ULONG)NewIntHandler)&0x0000FFFF);

    DPRINT((0,"new INT(%0.2x) handler = %0.4x:%x\n",dwInt,pidt->SegSel,(pidt->HiOffset<<16)|(pidt->LoOffset&0x0000FFFF)));

 OldIntHandler=(oldidt.HiOffset<<16)|(oldidt.LoOffset&0x0000FFFF);

    DPRINT((0,"old INT(%0.2x) handler = %0.4x:%x\n",dwInt,pidt->SegSel,OldIntHandler));

    LEAVE_FUNC();

 return OldIntHandler;
}
