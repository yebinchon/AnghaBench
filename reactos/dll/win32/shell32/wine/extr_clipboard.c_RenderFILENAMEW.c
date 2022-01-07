
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int UINT ;
typedef int LPITEMIDLIST ;
typedef int HGLOBAL ;
typedef int BOOL ;


 int GHND ;
 int GMEM_SHARE ;
 int GlobalAlloc (int,int) ;
 int * GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int ILCombine (int ,int ) ;
 int MAX_PATH ;
 int SHFree (int ) ;
 int SHGetPathFromIDListW (int ,int *) ;
 int TRACE (char*,int ,int *,int ) ;
 int memcpy (int *,int *,int) ;
 int strlenW (int *) ;

HGLOBAL RenderFILENAMEW (LPITEMIDLIST pidlRoot, LPITEMIDLIST * apidl, UINT cidl)
{
 int size = 0;
 WCHAR szTemp[MAX_PATH], *szFileName;
 LPITEMIDLIST pidl;
 HGLOBAL hGlobal;
 BOOL bSuccess;

 TRACE("(%p,%p,%u)\n", pidlRoot, apidl, cidl);


 pidl = ILCombine(pidlRoot, apidl[0]);
 if (!pidl)
  return 0;

 bSuccess = SHGetPathFromIDListW(pidl, szTemp);
 SHFree(pidl);
 if (!bSuccess)
  return 0;

 size = (strlenW(szTemp)+1) * sizeof(WCHAR);


 hGlobal = GlobalAlloc(GHND|GMEM_SHARE, size);
 if(!hGlobal) return hGlobal;
 szFileName = GlobalLock(hGlobal);
 memcpy(szFileName, szTemp, size);
 GlobalUnlock(hGlobal);

 return hGlobal;
}
