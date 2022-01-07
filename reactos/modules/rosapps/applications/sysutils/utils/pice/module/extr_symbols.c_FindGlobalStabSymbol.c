
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_8__ {scalar_t__ BaseAddress; } ;
struct TYPE_7__ {int ulOffsetToStabs; int ulSizeOfStabs; int ulOffsetToStabsStrings; } ;
struct TYPE_6__ {int n_strx; int n_type; int n_value; } ;
typedef int STAB_ENTRY ;
typedef int* PULONG ;
typedef TYPE_1__* PSTAB_ENTRY ;
typedef TYPE_2__ PICE_SYMBOLFILE_HEADER ;
typedef char* LPSTR ;
typedef int BOOLEAN ;


 int CurrentEBP ;
 int DPRINT (int ) ;
 int ExtractTypeNumber (char*) ;
 int FALSE ;
 int FindFunctionInModuleByName (char*,TYPE_3__*) ;
 TYPE_2__* FindModuleSymbols (int) ;





 int PICE_strcat (char*,char*) ;
 char* PICE_strchr (char*,char) ;
 int PICE_strcmpi (char*,char*) ;
 int PICE_strcpy (char*,char*) ;
 int PICE_strlen (char*) ;
 int PICE_strncpy (char*,char*,int) ;
 int StrLenUpToWhiteChar (char*,char*) ;
 int TRUE ;
 TYPE_3__* pCurrentMod ;

BOOLEAN FindGlobalStabSymbol(LPSTR pExpression,PULONG pValue,PULONG pulTypeNumber,PULONG pulFileNumber)
{
  ULONG i;
  PSTAB_ENTRY pStab;
  LPSTR pStr,pName;
  int nStabLen;
  int nOffset=0,nNextOffset=0,nLen,strLen;
  PICE_SYMBOLFILE_HEADER* pSymbols;
  ULONG ulTypeNumber;
  static char SymbolName[1024];
  static char szCurrentPath[256];
  ULONG ulCurrentFileNumber=0;
  LPSTR pTypeDefIncluded;
  ULONG addr;


  if(pCurrentMod)
    {

      addr = (ULONG)pCurrentMod->BaseAddress;


      pSymbols = FindModuleSymbols(addr);
      if(pSymbols)
 {

   pStab = (PSTAB_ENTRY )((ULONG)pSymbols + pSymbols->ulOffsetToStabs);
   nStabLen = pSymbols->ulSizeOfStabs;
   pStr = (LPSTR)((ULONG)pSymbols + pSymbols->ulOffsetToStabsStrings);

   *pulFileNumber = 0;


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
         DPRINT((0,"changing source file %s\n",szCurrentPath));
       }
     else
       {
         DPRINT((0,"changing source file %s\n",pName));
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
  case 131:
  case 130:

    nLen = StrLenUpToWhiteChar(pName,":");
    PICE_strncpy(SymbolName,pName,nLen);
    SymbolName[nLen] = 0;
    if(PICE_strcmpi(SymbolName,pExpression)==0)
      {
        DPRINT((0,"global symbol %s\n",pName));

        ulTypeNumber = ExtractTypeNumber(pName);
        DPRINT((0,"type number = %x, from %s\n",ulTypeNumber, pName));
        *pulTypeNumber = ulTypeNumber;

        if( pStab->n_type == 131 || pStab->n_type == 130 )
   *pValue = CurrentEBP + pStab->n_value;
        else *pValue = FindFunctionInModuleByName(SymbolName,pCurrentMod);

        DPRINT((0,"value = %x\n",*pValue));
        *pulFileNumber = ulCurrentFileNumber;
        DPRINT((0,"file = %x\n",ulCurrentFileNumber));
        if((pTypeDefIncluded = PICE_strchr(pName,'=')) )
   {
     DPRINT((0,"symbol includes type definition (%s)\n",pTypeDefIncluded));
   }
        return TRUE;
      }
    break;
  }
       pStab++;
     }
 }
    }
  return FALSE;
}
