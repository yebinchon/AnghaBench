
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
typedef int UCHAR ;
struct TYPE_3__ {int dwFlags; int wSel; int szDisasm; int * bpTarget; } ;
typedef TYPE_1__ TDisassembler ;
typedef scalar_t__* PULONG ;
typedef int PUCHAR ;
typedef int BOOLEAN ;


 int CurrentCS ;
 int DIS_ADDRESS32 ;
 int DIS_DATA32 ;
 scalar_t__ Disassembler (TYPE_1__*) ;
 int TRUE ;

BOOLEAN Disasm(PULONG pOffset,PUCHAR pchDst)
{
    TDisassembler dis;

    dis.dwFlags = DIS_DATA32 | DIS_ADDRESS32;
    dis.bpTarget = (UCHAR*)*pOffset;
    dis.szDisasm = pchDst;
    dis.wSel = CurrentCS;

    *pOffset += (ULONG)Disassembler( &dis);
    return TRUE;
}
