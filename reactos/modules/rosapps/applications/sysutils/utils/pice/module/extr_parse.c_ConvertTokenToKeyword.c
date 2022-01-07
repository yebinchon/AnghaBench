
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ULONG ;
typedef int PULONG ;
typedef int LPSTR ;
typedef int BOOLEAN ;


 int DPRINT (int ) ;
 int FALSE ;
 int PICE_strncpy (char*,int ,size_t) ;
 int RegKeyWords ;
 scalar_t__ ReplaceKeywordWithValue (char*,int ,int ) ;
 size_t StrLenUpToWhiteChar (int ,char*) ;
 int TRUE ;

BOOLEAN ConvertTokenToKeyword(LPSTR p,PULONG pValue)
{
    char Name[256];
    ULONG count;

 DPRINT((0,"ConvertTokenToKeyword()\n"));
 count=StrLenUpToWhiteChar(p," ");
 PICE_strncpy(Name,p,count);
 Name[count]=0;
 if(ReplaceKeywordWithValue(Name,pValue,RegKeyWords))
 {
  DPRINT((0,"ConvertTokenToKeyword(): success\n"));
  return TRUE;
 }
 return FALSE;
}
