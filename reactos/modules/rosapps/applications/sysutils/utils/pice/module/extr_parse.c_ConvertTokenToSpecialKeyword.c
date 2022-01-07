
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef int PULONG ;
typedef int LPSTR ;
typedef int BOOLEAN ;


 int FALSE ;
 int PICE_strncpy (char*,int ,size_t) ;
 scalar_t__ ReplaceKeywordWithValue (char*,int ,int ) ;
 int SpecialKeyWords ;
 size_t StrLenUpToWhiteChar (int ,char*) ;
 int TRUE ;

BOOLEAN ConvertTokenToSpecialKeyword(LPSTR p,PULONG pValue)
{
    char Name[256];
    ULONG count;

 count=StrLenUpToWhiteChar(p," ");
 PICE_strncpy(Name,p,count);
 Name[count]=0;
 if(ReplaceKeywordWithValue(Name,pValue,SpecialKeyWords))
 {
  return TRUE;
 }
 return FALSE;
}
