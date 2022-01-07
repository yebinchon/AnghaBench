
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ UINT ;
struct TYPE_2__ {int hModule; } ;
typedef int TCHAR ;
typedef int * LPTSTR ;


 int COUNTOF (int *) ;
 scalar_t__ GetModuleFileName (int ,int *,int ) ;
 int MAXEXTNAME ;
 int StrNCpy (int *,int *,int ) ;
 int * StrRChr (int *,int *,int ) ;
 int TEXT (char) ;
 TYPE_1__* extensions ;
 scalar_t__ iNumExtensions ;

VOID
ExtensionName(int i, LPTSTR szName)
{
  TCHAR szFullName[256];
  LPTSTR lpName;

  *szName = TEXT('\0');

  if ((UINT)i<(UINT)iNumExtensions
   && GetModuleFileName(extensions[i].hModule, szFullName,
   COUNTOF(szFullName)) && (lpName=StrRChr (szFullName, ((void*)0), TEXT('\\'))))
    StrNCpy(szName, lpName+1, MAXEXTNAME);
}
