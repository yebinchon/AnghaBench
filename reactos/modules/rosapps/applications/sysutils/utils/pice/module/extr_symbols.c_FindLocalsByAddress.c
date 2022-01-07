
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_10__ {int ulOffsetToStabs; int ulSizeOfStabs; int ulOffsetToStabsStrings; } ;
struct TYPE_9__ {char* type_name; char* name; void* offset; int bRegister; int line; void* value; } ;
struct TYPE_8__ {int n_strx; int n_type; int n_value; int n_desc; int n_other; } ;
typedef int STAB_ENTRY ;
typedef TYPE_1__* PSTAB_ENTRY ;
typedef TYPE_2__* PLOCAL_VARIABLE ;
typedef TYPE_3__ PICE_SYMBOLFILE_HEADER ;
typedef char* LPSTR ;


 void* CurrentEBP ;
 int DPRINT (int ) ;
 int ExtractTypeNumber (char*) ;
 int FALSE ;
 char* FindFunctionByAddress (int,int*,int*) ;
 TYPE_3__* FindModuleSymbols (int) ;
 char* FindTypeDefinition (TYPE_3__*,int,int) ;
 void** LocalRegs ;






 int PICE_fncmp (char*,char*) ;
 int PICE_strcat (char*,char*) ;
 int PICE_strcpy (char*,char*) ;
 int PICE_strlen (char*) ;
 int PICE_strncpy (char*,char*,int) ;
 int StrLenUpToWhiteChar (char*,char*) ;
 int TRUE ;
 char* TruncateString (char*,char) ;
 TYPE_2__* local_vars ;

PLOCAL_VARIABLE FindLocalsByAddress(ULONG addr)
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

    DPRINT((0,"FindLocalsByAddress()\n"));

    pFunctionName = FindFunctionByAddress(addr,&start,&end);
    DPRINT((0,"FindLocalsByAddress(): pFunctionName = %s\n",pFunctionName));
    if(pFunctionName)
    {
        pSymbols = FindModuleSymbols(addr);
        if(pSymbols)
        {
            pStab = (PSTAB_ENTRY )((ULONG)pSymbols + pSymbols->ulOffsetToStabs);
            nStabLen = pSymbols->ulSizeOfStabs;
            pStr = (LPSTR)((ULONG)pSymbols + pSymbols->ulOffsetToStabsStrings);

            for(i=0;i<(nStabLen/sizeof(STAB_ENTRY));i++)
            {
                pName = &pStr[pStab->n_strx + nOffset];

                DPRINT((0,"FindLocalsByAddress(): %x %x %x %x %x\n",
                        pStab->n_strx,
                        pStab->n_type,
                        pStab->n_other,
                        pStab->n_desc,
                        pStab->n_value));

                switch(pStab->n_type)
                {
                    case 128:
                        nOffset += nNextOffset;
                        nNextOffset = pStab->n_value;
                        break;
                    case 129:
                        if((strLen = PICE_strlen(pName)))
                        {
                            if(pName[strLen-1]!='/')
                            {
                                ulCurrentFileNumber++;
                                if(PICE_strlen(szCurrentPath))
                                {
                                    PICE_strcat(szCurrentPath,pName);
                                    DPRINT((0,"changing source file1 %s, %u\n",szCurrentPath,ulCurrentFileNumber));
                                }
                                else
                                {
                                    DPRINT((0,"changing source file %s, %u\n",pName,ulCurrentFileNumber));
                                }
                            }
                            else
                                PICE_strcpy(szCurrentPath,pName);
                        }
                        else
      {
                            szCurrentPath[0]=0;
      }
                        break;
                    case 132:

                        if(szCurrentFunction[0] && PICE_fncmp(szCurrentFunction,pFunctionName)==0)
                        {
                            DPRINT((0,"local variable1 %.8X %.8X %.8X %.8X %.8X %s\n",pStab->n_strx,pStab->n_type,pStab->n_other,pStab->n_desc,pStab->n_value,pName));
       ulTypeNumber = ExtractTypeNumber(pName);
       DPRINT((0,"type number = %u\n",ulTypeNumber));
       if((pTypedef = FindTypeDefinition(pSymbols,ulTypeNumber,ulCurrentFileNumber)))
       {
        DPRINT((0,"pTypedef: %x\n", pTypedef));
        PICE_strcpy(local_vars[ulNumLocalVars].type_name,TruncateString(pTypedef,':'));
        PICE_strcpy(local_vars[ulNumLocalVars].name,TruncateString(pName,':'));
        local_vars[ulNumLocalVars].value = (CurrentEBP+pStab->n_value);
        local_vars[ulNumLocalVars].offset = pStab->n_value;
        local_vars[ulNumLocalVars].line = pStab->n_desc;
                                local_vars[ulNumLocalVars].bRegister = FALSE;
        ulNumLocalVars++;
       }
                        }
                        break;
     case 131:

                        if(szCurrentFunction[0] && PICE_fncmp(szCurrentFunction,pFunctionName)==0)
                        {
                            DPRINT((0,"parameter variable %.8X %.8X %.8X %.8X %.8X %s\n",pStab->n_strx,pStab->n_type,pStab->n_other,pStab->n_desc,pStab->n_value,pName));
       ulTypeNumber = ExtractTypeNumber(pName);
       DPRINT((0,"type number = %x\n",ulTypeNumber));
       if((pTypedef = FindTypeDefinition(pSymbols,ulTypeNumber,ulCurrentFileNumber)))
       {
        PICE_strcpy(local_vars[ulNumLocalVars].type_name,TruncateString(pTypedef,':'));
        PICE_strcpy(local_vars[ulNumLocalVars].name,TruncateString(pName,':'));
        local_vars[ulNumLocalVars].value = (CurrentEBP+pStab->n_value);
        local_vars[ulNumLocalVars].offset = pStab->n_value;
        ulNumLocalVars++;
       }
                        }
                        break;
                    case 130:

                        if(szCurrentFunction[0] && PICE_fncmp(szCurrentFunction,pFunctionName)==0)
                        {
                            DPRINT((0,"local variable2 %.8X %.8X %.8X %.8X %.8X %s\n",pStab->n_strx,pStab->n_type,pStab->n_other,pStab->n_desc,pStab->n_value,pName));
       ulTypeNumber = ExtractTypeNumber(pName);
       DPRINT((0,"type number = %x\n",ulTypeNumber));
       if((pTypedef = FindTypeDefinition(pSymbols,ulTypeNumber,ulCurrentFileNumber)))
       {
        PICE_strcpy(local_vars[ulNumLocalVars].type_name,TruncateString(pTypedef,':'));
        PICE_strcpy(local_vars[ulNumLocalVars].name,TruncateString(pName,':'));
        local_vars[ulNumLocalVars].value = (LocalRegs[pStab->n_value]);
        local_vars[ulNumLocalVars].offset = pStab->n_value;
        local_vars[ulNumLocalVars].line = pStab->n_desc;
                                local_vars[ulNumLocalVars].bRegister = TRUE;
        ulNumLocalVars++;
       }
                        }
                        break;
                    case 133:
                        if(PICE_strlen(pName))
                        {
                            ULONG len;

                         len=StrLenUpToWhiteChar(pName,":");
                         PICE_strncpy(szCurrentFunction,pName,len);
                            szCurrentFunction[len]=0;
                            DPRINT((0,"function %s\n",szCurrentFunction));
                        }
      else
      {
                            DPRINT((0,"END of function %s\n",szCurrentFunction));
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
 return ((void*)0);
}
