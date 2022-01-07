
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {int ulOffsetToStabs; int ulSizeOfStabs; int ulOffsetToStabsStrings; } ;
struct TYPE_4__ {int n_strx; int n_type; int n_value; } ;
typedef int STAB_ENTRY ;
typedef TYPE_1__* PSTAB_ENTRY ;
typedef TYPE_2__ PICE_SYMBOLFILE_HEADER ;
typedef char* LPSTR ;


 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 int ExtractTypeNumber (char*) ;



 int PICE_strcat (char*,char*) ;
 char* PICE_strchr (char*,char) ;
 int PICE_strcpy (char*,char*) ;
 int PICE_strlen (char*) ;
 int StrLenUpToWhiteChar (char*,char*) ;

LPSTR FindTypeDefinitionForCombinedTypes(PICE_SYMBOLFILE_HEADER* pSymbols,ULONG ulTypeNumber,ULONG ulFileNumber)
{
    ULONG i;
    PSTAB_ENTRY pStab;
    LPSTR pStr,pName,pTypeNumber,pTypeDefIncluded,pNameTemp;
    int nStabLen;
    int nOffset=0,nNextOffset=0,nLen;
 static char szAccumulatedName[2048];
 ULONG ulCurrentTypeNumber,ulCurrentFileNumber=0;
    static char szCurrentPath[256];

    ENTER_FUNC();

 *szAccumulatedName = 0;

    pStab = (PSTAB_ENTRY )((ULONG)pSymbols + pSymbols->ulOffsetToStabs);
    nStabLen = pSymbols->ulSizeOfStabs;
    pStr = (LPSTR)((ULONG)pSymbols + pSymbols->ulOffsetToStabsStrings);

 DPRINT((0,"FindTypeDefinitionForCombinedTypes()\n"));

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
                if((nLen = PICE_strlen(pName)))
                {
                    if(pName[nLen-1]!='/')
                    {
      ulCurrentFileNumber++;
                        if(PICE_strlen(szCurrentPath))
                        {
                            PICE_strcat(szCurrentPath,pName);
                            DPRINT((0,"FindTypeDefinitionForCombinedTypes(): changing source file %s\n",szCurrentPath));
                        }
                        else
                        {
                            DPRINT((0,"FindTypeDefinitionForCombinedTypes(): changing source file %s\n",pName));
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

    if( 1 )
                {
                    DPRINT((0,"FindTypeDefinitionForCombinedTypes(): %s\n",pName));


     if(PICE_strchr(pName,'\\'))
     {
      if(PICE_strlen(szAccumulatedName))
      {
       PICE_strcat(szAccumulatedName,pName);
      }
      else
      {
       PICE_strcpy(szAccumulatedName,pName);
      }
                        szAccumulatedName[PICE_strlen(szAccumulatedName)-1]=0;

     }
                    else
                    {
      if(PICE_strlen(szAccumulatedName)==0)
                        {
                            PICE_strcpy(szAccumulatedName,pName);
                        }
                        else
                        {
                            PICE_strcat(szAccumulatedName,pName);
                        }
                        pNameTemp = szAccumulatedName;


            nLen = StrLenUpToWhiteChar(pNameTemp,":");
                        if((pTypeDefIncluded = PICE_strchr(pNameTemp,'=')) && pNameTemp[nLen+1]=='G')
                        {
                            DPRINT((0,"FindTypeDefinitionForCombinedTypes(): symbol includes type definition (%s)\n",pNameTemp));
                            pTypeNumber = pNameTemp+nLen+1;
                            if((ulCurrentTypeNumber = ExtractTypeNumber(pTypeNumber)) )
                            {
                                DPRINT((0,"FindTypeDefinitionForCombinedTypes(): type-number %x\n",ulCurrentTypeNumber));
                                if(ulCurrentTypeNumber == ulTypeNumber)
                                {
                                    DPRINT((0,"FindTypeDefinitionForCombinedTypes(): typenumber %x matches!\n",ulCurrentTypeNumber));
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
    return ((void*)0);
}
