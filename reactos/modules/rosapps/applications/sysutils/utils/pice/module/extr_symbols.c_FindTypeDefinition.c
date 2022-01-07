
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {int ulOffsetToStabs; int ulSizeOfStabs; int ulOffsetToStabsStrings; } ;
struct TYPE_5__ {int n_strx; int n_type; int n_value; } ;
typedef int STAB_ENTRY ;
typedef TYPE_1__* PSTAB_ENTRY ;
typedef TYPE_2__ PICE_SYMBOLFILE_HEADER ;
typedef char* LPSTR ;


 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 int ExtractTypeNumber (char*) ;
 char* FindTypeDefinitionForCombinedTypes (TYPE_2__*,int,int) ;



 int PICE_strcat (char*,char*) ;
 char* PICE_strchr (char*,char) ;
 int PICE_strcpy (char*,char*) ;
 int PICE_strlen (char*) ;
 int strrchr (char*,char) ;

LPSTR FindTypeDefinition(PICE_SYMBOLFILE_HEADER* pSymbols,ULONG ulTypeNumber,ULONG ulFileNumber)
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

    ENTER_FUNC();
    DPRINT((0,"FindTypeDefinition(%u,%u)\n",ulTypeNumber,ulFileNumber));

 *szAccumulatedName = 0;

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
    ulCurrentFileNumber++;
    if(PICE_strlen(szCurrentPath))
      {
        PICE_strcat(szCurrentPath,pName);
        DPRINT((0,"FindTypeDefinition()1: cha %s, %u\n",szCurrentPath, ulCurrentFileNumber));
      }
    else
      {
        DPRINT((0,"FindTypeDefinition(): cha %s, %u\n",pName, ulCurrentFileNumber));
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


   if(pStab->n_value == 0 )
     {
       DPRINT((0,"FindTypeDefinition(): pre type definition %s\n",pName));

       if(strrchr(pName,'\\'))
  {
    if(PICE_strlen(szAccumulatedName))
      {
        PICE_strcat(szAccumulatedName,pName);
        DPRINT((0,"FindTypeDefinition(): [1] accum. %s\n",szAccumulatedName));
      }
    else
      {
        PICE_strcpy(szAccumulatedName,pName);
        DPRINT((0,"FindTypeDefinition(): [2] accum. %s\n",szAccumulatedName));
      }
    szAccumulatedName[PICE_strlen(szAccumulatedName)-1]=0;
  }
       else
  {
    DPRINT((0,"FindTypeDefinition(): [3] accum. %s, pname: %s\n",szAccumulatedName, pName));
    if(PICE_strlen(szAccumulatedName)==0)
      {
        PICE_strcpy(szAccumulatedName,pName);
      }
    else
      {
        PICE_strcat(szAccumulatedName,pName);
      }
    pTypeString = szAccumulatedName;

    pTypeSymbol = PICE_strchr(pTypeString,':');
    if(pTypeSymbol && (*(pTypeSymbol+1)=='t' || *(pTypeSymbol+1)=='T'))
      {

        ulCurrentTypeNumber = ExtractTypeNumber(pTypeString);
        DPRINT((0,"FindTypeDefinition(): ulCurrType: %u, LSYM is type %s\n",ulCurrentTypeNumber,pName));
        if(ulCurrentTypeNumber == ulTypeNumber)
   {
     DPRINT((0,"FindTypeDefinition(): type definition %s\n",pTypeString));
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

    return FindTypeDefinitionForCombinedTypes(pSymbols,ulTypeNumber,ulFileNumber);

}
