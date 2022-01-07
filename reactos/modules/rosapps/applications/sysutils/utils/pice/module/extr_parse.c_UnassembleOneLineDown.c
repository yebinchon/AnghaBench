
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;


 int DPRINT (int ) ;
 int Disasm (scalar_t__*,scalar_t__*) ;
 scalar_t__ GetLinearAddress (int ,int ) ;
 int RepaintSource () ;
 scalar_t__* tempCmd ;
 int ulOldDisasmOffset ;
 int usOldDisasmSegment ;

void UnassembleOneLineDown(void)
{
    ULONG addr,addrorg;

    DPRINT((0,"UnassembleOneLineDown()\n"));

    addrorg = addr = GetLinearAddress(usOldDisasmSegment,ulOldDisasmOffset);

    DPRINT((0,"UnassembleOneLineDown(): addr = %.8X\n",addr));

    tempCmd[0]=0;
 Disasm(&addr,tempCmd);

    DPRINT((0,"UnassembleOneLineDown(): addr after = %.8X\n",addr));

    ulOldDisasmOffset += (addr - addrorg);
    RepaintSource();
}
