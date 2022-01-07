
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
typedef int UINT ;
struct TYPE_3__ {int pFiles; int fWide; } ;
typedef int LPITEMIDLIST ;
typedef int * HGLOBAL ;
typedef TYPE_1__ DROPFILES ;


 int GHND ;
 int GMEM_SHARE ;
 int GetProcessHeap () ;
 int * GlobalAlloc (int,int) ;
 TYPE_1__* GlobalLock (int *) ;
 int GlobalUnlock (int *) ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int ILCombine (int ,int ) ;
 int ILFree (int ) ;
 int MAX_PATH ;
 int PathAddBackslashW (scalar_t__*) ;
 int SHGetPathFromIDListW (int ,scalar_t__*) ;
 int TRACE (char*,int ,int *,int) ;
 int TRUE ;
 int _ILSimpleGetTextW (int ,scalar_t__*,int) ;
 int strcpyW (scalar_t__*,scalar_t__*) ;
 int strlenW (scalar_t__*) ;
 int wcscpy (scalar_t__*,scalar_t__*) ;
 int wcslen (scalar_t__*) ;

HGLOBAL RenderHDROP(LPITEMIDLIST pidlRoot, LPITEMIDLIST * apidl, UINT cidl)
{
 UINT i;



 int rootlen = 0,size = 0;
 WCHAR wszRootPath[MAX_PATH];

 WCHAR wszFileName[MAX_PATH];
 HGLOBAL hGlobal = ((void*)0);
 DROPFILES *pDropFiles;
 int offset;




 TRACE("(%p,%p,%u)\n", pidlRoot, apidl, cidl);
 size = sizeof(DROPFILES);


 SHGetPathFromIDListW(pidlRoot, wszRootPath);
 PathAddBackslashW(wszRootPath);
 rootlen = strlenW(wszRootPath);


 for (i=0; i<cidl;i++)
 {





   _ILSimpleGetTextW(apidl[i], wszFileName, MAX_PATH);
   size += (rootlen + strlenW(wszFileName) + 1) * sizeof(WCHAR);

 }

 size += sizeof(WCHAR);


 hGlobal = GlobalAlloc(GHND|GMEM_SHARE, size);



 if(!hGlobal) return hGlobal;


        pDropFiles = GlobalLock(hGlobal);
 offset = (sizeof(DROPFILES) + sizeof(WCHAR) - 1) / sizeof(WCHAR);
        pDropFiles->pFiles = offset * sizeof(WCHAR);
        pDropFiles->fWide = TRUE;


 strcpyW(wszFileName, wszRootPath);


 for (i=0; i<cidl;i++)
 {







   _ILSimpleGetTextW(apidl[i], wszFileName + rootlen, MAX_PATH - rootlen);
   strcpyW(((WCHAR*)pDropFiles)+offset, wszFileName);
   offset += strlenW(wszFileName) + 1;

 }

 ((WCHAR*)pDropFiles)[offset] = 0;
 GlobalUnlock(hGlobal);







 return hGlobal;
}
