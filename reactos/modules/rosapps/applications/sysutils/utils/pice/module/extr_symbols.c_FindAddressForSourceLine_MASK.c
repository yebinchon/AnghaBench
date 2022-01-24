#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_9__ {scalar_t__ BaseAddress; } ;
struct TYPE_8__ {int ulOffsetToStabs; int ulSizeOfStabs; int ulOffsetToStabsStrings; } ;
struct TYPE_7__ {int n_strx; int n_type; int n_value; int n_desc; } ;
typedef  int /*<<< orphan*/  STAB_ENTRY ;
typedef  int* PULONG ;
typedef  TYPE_1__* PSTAB_ENTRY ;
typedef  TYPE_2__ PICE_SYMBOLFILE_HEADER ;
typedef  TYPE_3__* PDEBUG_MODULE ;
typedef  char* LPSTR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC1 (char*,TYPE_3__*) ; 
 TYPE_2__* FUNC2 (int) ; 
#define  N_FUN 131 
#define  N_SLINE 130 
#define  N_SO 129 
#define  N_UNDF 128 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  TRUE ; 

BOOLEAN FUNC9(ULONG ulLineNumber,LPSTR pFilename,PDEBUG_MODULE pMod,PULONG pValue)
{
    ULONG i;
    PSTAB_ENTRY pStab;
    LPSTR pStr,pName;
    int nStabLen;
    int nOffset=0,nNextOffset=0;
    PICE_SYMBOLFILE_HEADER* pSymbols;
    static char szCurrentFunction[256];
    static char szCurrentPath[256];
    ULONG strLen,addr,ulMinValue=0xFFFFFFFF;
    BOOLEAN bFound = FALSE;

    FUNC0((0,"FindAddressForSourceLine(%u,%s,%x)\n",ulLineNumber,pFilename,(ULONG)pMod));

    addr = (ULONG)pMod->BaseAddress;

    pSymbols = FUNC2(addr);
    if(pSymbols)
    {
        pStab = (PSTAB_ENTRY )((ULONG)pSymbols + pSymbols->ulOffsetToStabs);
        nStabLen = pSymbols->ulSizeOfStabs;
        pStr = (LPSTR)((ULONG)pSymbols + pSymbols->ulOffsetToStabsStrings);

        for(i=0;i<(nStabLen/sizeof(STAB_ENTRY));i++)
        {
            pName = &pStr[pStab->n_strx + nOffset];

            switch(pStab->n_type)
            {
                case N_UNDF:
                    nOffset += nNextOffset;
                    nNextOffset = pStab->n_value;
                    break;
                case N_SO:
					if((strLen = FUNC6(pName)))
                    {
                        if(pName[strLen-1]!='/')
                        {
                            if(FUNC6(szCurrentPath))
                            {
                                FUNC3(szCurrentPath,pName);
                                FUNC0((0,"changing source file %s\n",szCurrentPath));
                            }
                            else
                            {
                                FUNC0((0,"changing source file %s\n",pName));
                                FUNC5(szCurrentPath,pName);
                            }
                        }
                        else
                            FUNC5(szCurrentPath,pName);
                    }
                    else
					{
                        szCurrentPath[0]=0;
					}
                    break;
                case N_SLINE:
					// if we're in the function we're looking for
                    if(FUNC4(pFilename,szCurrentPath)==0)
                    {
                        if(pStab->n_desc>=ulLineNumber && (pStab->n_desc-ulLineNumber)<=ulMinValue)
                        {
                            ulMinValue = pStab->n_desc-ulLineNumber;

                            FUNC0((0,"code source line number #%u for offset %x in function @ %s)\n",pStab->n_desc,pStab->n_value,szCurrentFunction));
                            addr = FUNC1(szCurrentFunction,pMod);
                            if(addr)
                            {
                                *pValue = addr + pStab->n_value;
                                bFound = TRUE;
                            }
                        }
                    }
                    break;
                case N_FUN:
                    if(FUNC6(pName))
                    {
                        ULONG len;

	                    len=FUNC8(pName,":");
	                    FUNC7(szCurrentFunction,pName,len);
                        szCurrentFunction[len]=0;
                        FUNC0((0,"function %s\n",szCurrentFunction));
                    }
					else
					{
                        FUNC0((0,"END of function %s\n",szCurrentFunction));
						szCurrentFunction[0]=0;
					}
                    break;
            }
            pStab++;
        }
    }
    return bFound;
}