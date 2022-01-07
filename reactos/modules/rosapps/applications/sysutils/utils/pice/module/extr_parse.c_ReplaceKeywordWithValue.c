
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int USHORT ;
typedef size_t ULONG ;
struct TYPE_3__ {int ulSize; int pValue; int * KeyWord; } ;
typedef int * PUSHORT ;
typedef size_t* PULONG ;
typedef int LPSTR ;
typedef TYPE_1__ KEYWORDS ;
typedef int BOOLEAN ;


 int FALSE ;
 scalar_t__ PICE_strcmpi (int ,int *) ;
 int TRUE ;

BOOLEAN ReplaceKeywordWithValue(LPSTR p,PULONG pValue,KEYWORDS* pKeyWords)
{
    ULONG i;

 for(i=0;pKeyWords[i].KeyWord!=((void*)0);i++)
 {
  if(PICE_strcmpi(p,pKeyWords[i].KeyWord)==0)
  {
   switch(pKeyWords[i].ulSize)
   {
    case sizeof(USHORT):
     *pValue=(ULONG)*(PUSHORT)(pKeyWords[i].pValue);
     break;
    case sizeof(ULONG):
     *pValue=*(PULONG)(pKeyWords[i].pValue);
     break;
   }
   return TRUE;
  }
 }
 return FALSE;
}
