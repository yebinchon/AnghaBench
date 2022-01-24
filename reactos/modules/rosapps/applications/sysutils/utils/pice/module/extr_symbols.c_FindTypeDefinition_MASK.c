#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_6__ {int ulOffsetToStabs; int ulSizeOfStabs; int ulOffsetToStabsStrings; } ;
struct TYPE_5__ {int n_strx; int n_type; int n_value; } ;
typedef  int /*<<< orphan*/  STAB_ENTRY ;
typedef  TYPE_1__* PSTAB_ENTRY ;
typedef  TYPE_2__ PICE_SYMBOLFILE_HEADER ;
typedef  char* LPSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (TYPE_2__*,int,int) ; 
#define  N_LSYM 130 
#define  N_SO 129 
#define  N_UNDF 128 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char) ; 

LPSTR FUNC9(PICE_SYMBOLFILE_HEADER* pSymbols,ULONG ulTypeNumber,ULONG ulFileNumber)
{
    ULONG i;
    PSTAB_ENTRY pStab;
    LPSTR pStr,pName,pTypeString;
    int nStabLen;
    int nOffset=0,nNextOffset=0,strLen;
	static char szAccumulatedName[2048];
	ULONG ulCurrentTypeNumber,ulCurrentFileNumber=0;
	LPSTR pTypeSymbol;
    static char szCurrentPath[256];

    FUNC1();
    FUNC0((0,"FindTypeDefinition(%u,%u)\n",ulTypeNumber,ulFileNumber));

	*szAccumulatedName = 0;

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
	  if((strLen = FUNC7(pName)))
	    {
	      if(pName[strLen-1]!='/')
		{
		  ulCurrentFileNumber++;
		  if(FUNC7(szCurrentPath))
		    {
		      FUNC4(szCurrentPath,pName);
		      FUNC0((0,"FindTypeDefinition()1: cha %s, %u\n",szCurrentPath, ulCurrentFileNumber));
		    }
		  else
		    {
		      FUNC0((0,"FindTypeDefinition(): cha %s, %u\n",pName, ulCurrentFileNumber));
		    }
		}
	      else
		FUNC6(szCurrentPath,pName);
	    }
	  else
	    {
	      szCurrentPath[0]=0;
	    }
	  break;
	case N_LSYM:
				// stab has no value -> must be type definition
				//ei File number count is not reliable
	  if(pStab->n_value == 0 /*&& ulCurrentFileNumber==ulFileNumber*/)
	    {
	      FUNC0((0,"FindTypeDefinition(): pre type definition %s\n",pName));
	      // handle multi-line symbols
	      if(FUNC8(pName,'\\'))
		{
		  if(FUNC7(szAccumulatedName))
		    {
		      FUNC4(szAccumulatedName,pName);
		      FUNC0((0,"FindTypeDefinition(): [1] accum. %s\n",szAccumulatedName));
		    }
		  else
		    {
		      FUNC6(szAccumulatedName,pName);
		      FUNC0((0,"FindTypeDefinition(): [2] accum. %s\n",szAccumulatedName));
		    }
		  szAccumulatedName[FUNC7(szAccumulatedName)-1]=0;
		}
	      else
		{
		  FUNC0((0,"FindTypeDefinition(): [3] accum. %s, pname: %s\n",szAccumulatedName, pName));
		  if(FUNC7(szAccumulatedName)==0)
		    {
		      FUNC6(szAccumulatedName,pName);
		    }
		  else
		    {
		      FUNC4(szAccumulatedName,pName);
		    }
		  pTypeString = szAccumulatedName;

		  pTypeSymbol = FUNC5(pTypeString,':');
		  if(pTypeSymbol && (*(pTypeSymbol+1)=='t' || *(pTypeSymbol+1)=='T'))
		    {
		      // parse it
		      ulCurrentTypeNumber = FUNC2(pTypeString);
		      FUNC0((0,"FindTypeDefinition(): ulCurrType: %u, LSYM is type %s\n",ulCurrentTypeNumber,pName));
		      if(ulCurrentTypeNumber == ulTypeNumber)
			{
			  FUNC0((0,"FindTypeDefinition(): type definition %s\n",pTypeString));
			  return pTypeString;
			}
		    }
		  *szAccumulatedName=0;
		}
	    }
	  break;
        }
        pStab++;
    }

    return FUNC3(pSymbols,ulTypeNumber,ulFileNumber);

}