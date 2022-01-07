
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LPITEMIDLIST ;
typedef int HGLOBAL ;
typedef int BOOL ;


 int GHND ;
 int GMEM_SHARE ;
 int GlobalAlloc (int,int) ;
 char* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int ILCombine (int ,int ) ;
 int MAX_PATH ;
 int SHFree (int ) ;
 int SHGetPathFromIDListA (int ,char*) ;
 int TRACE (char*,int ,int *,int ) ;
 int memcpy (char*,char*,int) ;
 int strlen (char*) ;

HGLOBAL RenderFILENAMEA (LPITEMIDLIST pidlRoot, LPITEMIDLIST * apidl, UINT cidl)
{
 int size = 0;
 char szTemp[MAX_PATH], *szFileName;
 LPITEMIDLIST pidl;
 HGLOBAL hGlobal;
 BOOL bSuccess;

 TRACE("(%p,%p,%u)\n", pidlRoot, apidl, cidl);


 pidl = ILCombine(pidlRoot, apidl[0]);
 if (!pidl)
  return 0;

 bSuccess = SHGetPathFromIDListA(pidl, szTemp);
 SHFree(pidl);
 if (!bSuccess)
  return 0;

 size = strlen(szTemp) + 1;


 hGlobal = GlobalAlloc(GHND|GMEM_SHARE, size);
 if(!hGlobal) return hGlobal;
 szFileName = GlobalLock(hGlobal);
 memcpy(szFileName, szTemp, size);
 GlobalUnlock(hGlobal);

 return hGlobal;
}
