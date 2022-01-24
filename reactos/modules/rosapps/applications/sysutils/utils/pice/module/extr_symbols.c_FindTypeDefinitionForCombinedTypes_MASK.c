#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_5__ {int ulOffsetToStabs; int ulSizeOfStabs; int ulOffsetToStabsStrings; } ;
struct TYPE_4__ {int n_strx; int n_type; int n_value; } ;
typedef  int /*<<< orphan*/  STAB_ENTRY ;
typedef  TYPE_1__* PSTAB_ENTRY ;
typedef  TYPE_2__ PICE_SYMBOLFILE_HEADER ;
typedef  char* LPSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char*) ; 
#define  N_GSYM 130 
#define  N_SO 129 
#define  N_UNDF 128 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 
 int FUNC7 (char*,char*) ; 

LPSTR FUNC8(PICE_SYMBOLFILE_HEADER* pSymbols,ULONG ulTypeNumber,ULONG ulFileNumber)
{
    ULONG i;
    PSTAB_ENTRY pStab;
    LPSTR pStr,pName,pTypeNumber,pTypeDefIncluded,pNameTemp;
    int nStabLen;
    int nOffset=0,nNextOffset=0,nLen;
	static char szAccumulatedName[2048];
	ULONG ulCurrentTypeNumber,ulCurrentFileNumber=0;
    static char szCurrentPath[256];

    FUNC1();

	*szAccumulatedName = 0;

    pStab = (PSTAB_ENTRY )((ULONG)pSymbols + pSymbols->ulOffsetToStabs);
    nStabLen = pSymbols->ulSizeOfStabs;
    pStr = (LPSTR)((ULONG)pSymbols + pSymbols->ulOffsetToStabsStrings);

	FUNC0((0,"FindTypeDefinitionForCombinedTypes()\n"));

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
                if((nLen = FUNC6(pName)))
                {
                    if(pName[nLen-1]!='/')
                    {
						ulCurrentFileNumber++;
                        if(FUNC6(szCurrentPath))
                        {
                            FUNC3(szCurrentPath,pName);
                            FUNC0((0,"FindTypeDefinitionForCombinedTypes(): changing source file %s\n",szCurrentPath));
                        }
                        else
                        {
                            FUNC0((0,"FindTypeDefinitionForCombinedTypes(): changing source file %s\n",pName));
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
			case N_GSYM:
				//ei File number count is not reliable
				if( 1 /*ulCurrentFileNumber == ulFileNumber*/)
                {
                    FUNC0((0,"FindTypeDefinitionForCombinedTypes(): %s\n",pName));

					// handle multi-line symbols
					if(FUNC4(pName,'\\'))
					{
						if(FUNC6(szAccumulatedName))
						{
							FUNC3(szAccumulatedName,pName);
						}
						else
						{
							FUNC5(szAccumulatedName,pName);
						}
                        szAccumulatedName[FUNC6(szAccumulatedName)-1]=0;
                        //DPRINT((0,"accum. %s\n",szAccumulatedName));
					}
                    else
                    {
						if(FUNC6(szAccumulatedName)==0)
                        {
                            FUNC5(szAccumulatedName,pName);
                        }
                        else
                        {
                            FUNC3(szAccumulatedName,pName);
                        }
                        pNameTemp = szAccumulatedName;

                        // symbol-name:type-identifier type-number =
				        nLen = FUNC7(pNameTemp,":");
                        if((pTypeDefIncluded = FUNC4(pNameTemp,'=')) && pNameTemp[nLen+1]=='G')
                        {
                            FUNC0((0,"FindTypeDefinitionForCombinedTypes(): symbol includes type definition (%s)\n",pNameTemp));
                            pTypeNumber = pNameTemp+nLen+1;
                            if((ulCurrentTypeNumber = FUNC2(pTypeNumber)) )
                            {
                                FUNC0((0,"FindTypeDefinitionForCombinedTypes(): type-number %x\n",ulCurrentTypeNumber));
                                if(ulCurrentTypeNumber == ulTypeNumber)
                                {
                                    FUNC0((0,"FindTypeDefinitionForCombinedTypes(): typenumber %x matches!\n",ulCurrentTypeNumber));
                                    return pNameTemp;
                                }
                            }
				        }
                        *szAccumulatedName = 0;
                    }
                }
				break;
        }
        pStab++;
    }
    return NULL;
}