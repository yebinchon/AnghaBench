
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_9__ {scalar_t__ BaseAddress; } ;
struct TYPE_8__ {int ulOffsetToStabs; int ulSizeOfStabs; int ulOffsetToStabsStrings; } ;
struct TYPE_7__ {int n_strx; int n_type; int n_value; int n_desc; } ;
typedef int STAB_ENTRY ;
typedef int* PULONG ;
typedef TYPE_1__* PSTAB_ENTRY ;
typedef TYPE_2__ PICE_SYMBOLFILE_HEADER ;
typedef TYPE_3__* PDEBUG_MODULE ;
typedef char* LPSTR ;
typedef int BOOLEAN ;


 int DPRINT (int ) ;
 int FALSE ;
 int FindFunctionInModuleByName (char*,TYPE_3__*) ;
 TYPE_2__* FindModuleSymbols (int) ;




 int PICE_strcat (char*,char*) ;
 int PICE_strcmpi (char*,char*) ;
 int PICE_strcpy (char*,char*) ;
 int PICE_strlen (char*) ;
 int PICE_strncpy (char*,char*,int) ;
 int StrLenUpToWhiteChar (char*,char*) ;
 int TRUE ;

BOOLEAN FindAddressForSourceLine(ULONG ulLineNumber,LPSTR pFilename,PDEBUG_MODULE pMod,PULONG pValue)
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

    DPRINT((0,"FindAddressForSourceLine(%u,%s,%x)\n",ulLineNumber,pFilename,(ULONG)pMod));

    addr = (ULONG)pMod->BaseAddress;

    pSymbols = FindModuleSymbols(addr);
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
                case 128:
                    nOffset += nNextOffset;
                    nNextOffset = pStab->n_value;
                    break;
                case 129:
     if((strLen = PICE_strlen(pName)))
                    {
                        if(pName[strLen-1]!='/')
                        {
                            if(PICE_strlen(szCurrentPath))
                            {
                                PICE_strcat(szCurrentPath,pName);
                                DPRINT((0,"changing source file %s\n",szCurrentPath));
                            }
                            else
                            {
                                DPRINT((0,"changing source file %s\n",pName));
                                PICE_strcpy(szCurrentPath,pName);
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
                case 130:

                    if(PICE_strcmpi(pFilename,szCurrentPath)==0)
                    {
                        if(pStab->n_desc>=ulLineNumber && (pStab->n_desc-ulLineNumber)<=ulMinValue)
                        {
                            ulMinValue = pStab->n_desc-ulLineNumber;

                            DPRINT((0,"code source line number #%u for offset %x in function @ %s)\n",pStab->n_desc,pStab->n_value,szCurrentFunction));
                            addr = FindFunctionInModuleByName(szCurrentFunction,pMod);
                            if(addr)
                            {
                                *pValue = addr + pStab->n_value;
                                bFound = TRUE;
                            }
                        }
                    }
                    break;
                case 131:
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
     }
                    break;
            }
            pStab++;
        }
    }
    return bFound;
}
