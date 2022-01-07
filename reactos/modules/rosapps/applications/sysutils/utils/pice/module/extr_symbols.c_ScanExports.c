
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;
typedef int * PULONG ;
typedef int* LPSTR ;
typedef int BOOLEAN ;


 int ConvertTokenToHex (int*,int *) ;
 int DPRINT (int ) ;
 int ENTER_FUNC () ;
 int FALSE ;
 int LEAVE_FUNC () ;
 scalar_t__ PICE_strtok (char*,char*) ;
 int TRUE ;
 int* pExports ;
 int strcmp (int*,char const*) ;
 int* strstr (int*,char const*) ;

BOOLEAN ScanExports(const char *pFind,PULONG pValue)
{
 char temp[256];
 LPSTR pStr=((void*)0);
 LPSTR pExp = pExports;
 BOOLEAN bResult = FALSE;

 ENTER_FUNC();
 DPRINT((0,"ScanExports pValue: %x\n", pValue));
nomatch:
 if(pExports)
  pStr = strstr(pExp,pFind);

 if(pStr)
 {
  LPSTR p;
  ULONG state;
  LPSTR pOldStr = pStr;

  for(;(*pStr!=0x0a && *pStr!=0x0d) && (ULONG)pStr>=(ULONG)pExports;pStr--);
  pStr++;
  p = temp;
  for(;(*pStr!=0x0a && *pStr!=0x0d);)*p++=*pStr++;
  *p=0;
  p = (LPSTR) PICE_strtok(temp," ");
  state=0;
  while(p)
  {
   switch(state)
   {
    case 0:
     ConvertTokenToHex(p,pValue);
     break;
    case 1:
     break;
    case 2:
     if(strcmp(p,pFind)!=0)
     {
      DPRINT((0,"Not: %s\n", p));
      pExp = pOldStr+1;
      goto nomatch;
     }
     state = -1;
     bResult = TRUE;
              DPRINT((0,"%s @ %x\n",pFind,*pValue));
     goto exit;
     break;
   }
   state++;
   p = (char*) PICE_strtok(((void*)0)," ");
  }
 }
exit:
 DPRINT((0,"%s %x @ %x\n",pFind,pValue,*pValue));

 LEAVE_FUNC();

 return bResult;
}
