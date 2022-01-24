#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_10__ {int ulOffsetToStabs; int ulSizeOfStabs; int ulOffsetToStabsStrings; } ;
struct TYPE_9__ {char* type_name; char* name; void* offset; int /*<<< orphan*/  bRegister; int /*<<< orphan*/  line; void* value; } ;
struct TYPE_8__ {int n_strx; int n_type; int n_value; int /*<<< orphan*/  n_desc; int /*<<< orphan*/  n_other; } ;
typedef  int /*<<< orphan*/  STAB_ENTRY ;
typedef  TYPE_1__* PSTAB_ENTRY ;
typedef  TYPE_2__* PLOCAL_VARIABLE ;
typedef  TYPE_3__ PICE_SYMBOLFILE_HEADER ;
typedef  char* LPSTR ;

/* Variables and functions */
 void* CurrentEBP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 char* FUNC2 (int,int*,int*) ; 
 TYPE_3__* FUNC3 (int) ; 
 char* FUNC4 (TYPE_3__*,int,int) ; 
 void** LocalRegs ; 
#define  N_FUN 133 
#define  N_LSYM 132 
#define  N_PSYM 131 
#define  N_RSYM 130 
#define  N_SO 129 
#define  N_UNDF 128 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 int FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC11 (char*,char) ; 
 TYPE_2__* local_vars ; 

PLOCAL_VARIABLE FUNC12(ULONG addr)
{
    ULONG i;
    PSTAB_ENTRY pStab;
    LPSTR pStr,pName;
    int nStabLen;
    int nOffset=0,nNextOffset=0;
    PICE_SYMBOLFILE_HEADER* pSymbols;
    static char szCurrentFunction[256];
    static char szCurrentPath[256];
    LPSTR pFunctionName;
    ULONG start,end,strLen;
	ULONG ulTypeNumber,ulCurrentFileNumber=0;
	LPSTR pTypedef;
	ULONG ulNumLocalVars=0;

    FUNC0((0,"FindLocalsByAddress()\n"));

    pFunctionName = FUNC2(addr,&start,&end);
    FUNC0((0,"FindLocalsByAddress(): pFunctionName = %s\n",pFunctionName));
    if(pFunctionName)
    {
        pSymbols = FUNC3(addr);
        if(pSymbols)
        {
            pStab = (PSTAB_ENTRY )((ULONG)pSymbols + pSymbols->ulOffsetToStabs);
            nStabLen = pSymbols->ulSizeOfStabs;
            pStr = (LPSTR)((ULONG)pSymbols + pSymbols->ulOffsetToStabsStrings);

            for(i=0;i<(nStabLen/sizeof(STAB_ENTRY));i++)
            {
                pName = &pStr[pStab->n_strx + nOffset];

                FUNC0((0,"FindLocalsByAddress(): %x %x %x %x %x\n",
                        pStab->n_strx,
                        pStab->n_type,
                        pStab->n_other,
                        pStab->n_desc,
                        pStab->n_value));

                switch(pStab->n_type)
                {
                    case N_UNDF:
                        nOffset += nNextOffset;
                        nNextOffset = pStab->n_value;
                        break;
                    case N_SO:
                        if((strLen = FUNC8(pName)))
                        {
                            if(pName[strLen-1]!='/')
                            {
                                ulCurrentFileNumber++;
                                if(FUNC8(szCurrentPath))
                                {
                                    FUNC6(szCurrentPath,pName);
                                    FUNC0((0,"changing source file1 %s, %u\n",szCurrentPath,ulCurrentFileNumber));
                                }
                                else
                                {
                                    FUNC0((0,"changing source file %s, %u\n",pName,ulCurrentFileNumber));
                                }
                            }
                            else
                                FUNC7(szCurrentPath,pName);
                        }
                        else
						{
                            szCurrentPath[0]=0;
						}
                        break;
                    case N_LSYM:
						// if we're in the function we're looking for
                        if(szCurrentFunction[0] && FUNC5(szCurrentFunction,pFunctionName)==0)
                        {
                            FUNC0((0,"local variable1 %.8X %.8X %.8X %.8X %.8X %s\n",pStab->n_strx,pStab->n_type,pStab->n_other,pStab->n_desc,pStab->n_value,pName));
							ulTypeNumber = FUNC1(pName);
							FUNC0((0,"type number = %u\n",ulTypeNumber));
							if((pTypedef = FUNC4(pSymbols,ulTypeNumber,ulCurrentFileNumber)))
							{
								FUNC0((0,"pTypedef: %x\n", pTypedef));
								FUNC7(local_vars[ulNumLocalVars].type_name,FUNC11(pTypedef,':'));
								FUNC7(local_vars[ulNumLocalVars].name,FUNC11(pName,':'));
								local_vars[ulNumLocalVars].value = (CurrentEBP+pStab->n_value);
								local_vars[ulNumLocalVars].offset = pStab->n_value;
								local_vars[ulNumLocalVars].line = pStab->n_desc;
                                local_vars[ulNumLocalVars].bRegister = FALSE;
								ulNumLocalVars++;
							}
                        }
                        break;
					case N_PSYM:
						// if we're in the function we're looking for
                        if(szCurrentFunction[0] && FUNC5(szCurrentFunction,pFunctionName)==0)
                        {
                            FUNC0((0,"parameter variable %.8X %.8X %.8X %.8X %.8X %s\n",pStab->n_strx,pStab->n_type,pStab->n_other,pStab->n_desc,pStab->n_value,pName));
							ulTypeNumber = FUNC1(pName);
							FUNC0((0,"type number = %x\n",ulTypeNumber));
							if((pTypedef = FUNC4(pSymbols,ulTypeNumber,ulCurrentFileNumber)))
							{
								FUNC7(local_vars[ulNumLocalVars].type_name,FUNC11(pTypedef,':'));
								FUNC7(local_vars[ulNumLocalVars].name,FUNC11(pName,':'));
								local_vars[ulNumLocalVars].value = (CurrentEBP+pStab->n_value);
								local_vars[ulNumLocalVars].offset = pStab->n_value;
								ulNumLocalVars++;
							}
                        }
                        break;
                    case N_RSYM:
						// if we're in the function we're looking for
                        if(szCurrentFunction[0] && FUNC5(szCurrentFunction,pFunctionName)==0)
                        {
                            FUNC0((0,"local variable2 %.8X %.8X %.8X %.8X %.8X %s\n",pStab->n_strx,pStab->n_type,pStab->n_other,pStab->n_desc,pStab->n_value,pName));
							ulTypeNumber = FUNC1(pName);
							FUNC0((0,"type number = %x\n",ulTypeNumber));
							if((pTypedef = FUNC4(pSymbols,ulTypeNumber,ulCurrentFileNumber)))
							{
								FUNC7(local_vars[ulNumLocalVars].type_name,FUNC11(pTypedef,':'));
								FUNC7(local_vars[ulNumLocalVars].name,FUNC11(pName,':'));
								local_vars[ulNumLocalVars].value = (LocalRegs[pStab->n_value]);
								local_vars[ulNumLocalVars].offset = pStab->n_value;
								local_vars[ulNumLocalVars].line = pStab->n_desc;
                                local_vars[ulNumLocalVars].bRegister = TRUE;
								ulNumLocalVars++;
							}
                        }
                        break;
                    case N_FUN:
                        if(FUNC8(pName))
                        {
                            ULONG len;

	                        len=FUNC10(pName,":");
	                        FUNC9(szCurrentFunction,pName,len);
                            szCurrentFunction[len]=0;
                            FUNC0((0,"function %s\n",szCurrentFunction));
                        }
						else
						{
                            FUNC0((0,"END of function %s\n",szCurrentFunction));
                            szCurrentFunction[0]=0;
							if(ulNumLocalVars)
							{
								*local_vars[ulNumLocalVars].name = 0;
								return local_vars;
							}
						}
                        break;
                }
                pStab++;
            }
        }
    }
	return NULL;
}