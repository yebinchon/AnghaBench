
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int LPSTR ;
typedef int LONG ;


 int DPRINT (int ) ;
 int Disasm (scalar_t__*,scalar_t__*) ;
 int FindFunctionByAddress (scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ GetLinearAddress (int ,scalar_t__) ;
 int RepaintSource () ;
 scalar_t__* tempCmd ;
 scalar_t__ ulOldDisasmOffset ;
 int usOldDisasmSegment ;

void UnassembleOnePageUp(ULONG page)
{
    ULONG addr,addrorg,addrbefore,start,end,i,addrstart;
    LONG offset;
    LPSTR pSymbol;

    DPRINT((0,"UnassembleOnePageUp()\n"));

    for(i=0;i<page;i++)
    {
        addrorg = addr = GetLinearAddress(usOldDisasmSegment,ulOldDisasmOffset);

        DPRINT((0,"UnassembleOnePageUp(): addrorg = %.8X\n",addr));

        offset = 1;

        if((pSymbol = FindFunctionByAddress(addrorg-offset,&start,&end)) )
        {
            offset = addrorg - start;
            DPRINT((0,"UnassembleOnePageUp(): %s @ offset = %u\n",pSymbol,offset));
        }
        else
        {

            offset = 15;
        }


        addr = addrorg - offset;
        addrstart = addrorg;
        do
        {
            DPRINT((0,"UnassembleOnePageUp(): offset = %u addrorg %x addr %x\n",offset,addrorg,addr));
            addrbefore = addr;

            tempCmd[0]=0;
         Disasm(&addr,tempCmd);
            DPRINT((0,"%.8X: %s\n",addrbefore,tempCmd));
        }while((addr != addrorg) && (addrbefore < addrorg));

        if((addrorg - addrstart)<=0)
            ulOldDisasmOffset--;
        else
            ulOldDisasmOffset -= (addrorg - addrbefore);

    }

    DPRINT((0,"UnassembleOnePageUp(): new addr = %.4X:%.8X\n",usOldDisasmSegment,ulOldDisasmOffset));

    RepaintSource();
}
