
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int LPVOID ;
typedef int LPCITEMIDLIST ;
typedef int IShellFolder ;
typedef int IExtractIconW ;
typedef int HRESULT ;
typedef int HICON ;


 int DestroyIcon (int ) ;
 scalar_t__ ExtractIconExW (int *,int,int ,int *,int) ;
 unsigned int GIL_DONTCACHE ;
 int GIL_FORSHELL ;
 unsigned int GIL_NOTFILENAME ;
 int GetSystemMetrics (int ) ;
 int IExtractIconW_Extract (int *,int *,int,int *,int *,int ) ;
 int IExtractIconW_GetIconLocation (int *,int ,int *,int,int*,unsigned int*) ;
 int IID_IExtractIconW ;
 int IShellFolder_GetUIObjectOf (int *,int ,int,int *,int *,int ,int *) ;
 int MAKELONG (int ,int ) ;
 int SM_CXSMICON ;
 scalar_t__ SUCCEEDED (int ) ;
 int _MAX_PATH ;

__attribute__((used)) static HICON extract_icon(IShellFolder* folder, LPCITEMIDLIST pidl)
{
 IExtractIconW* pExtract;

 if (SUCCEEDED(IShellFolder_GetUIObjectOf(folder, 0, 1, (LPCITEMIDLIST*)&pidl, &IID_IExtractIconW, 0, (LPVOID*)&pExtract))) {
  WCHAR path[_MAX_PATH];
  unsigned flags;
  HICON hicon;
  int idx;

  if (SUCCEEDED(IExtractIconW_GetIconLocation(pExtract, GIL_FORSHELL, path, _MAX_PATH, &idx, &flags))) {
   if (!(flags & GIL_NOTFILENAME)) {
    if (idx == -1)
     idx = 0;

    if ((int)ExtractIconExW(path, idx, 0, &hicon, 1) > 0)
     flags &= ~GIL_DONTCACHE;
   } else {
    HICON hIconLarge = 0;

    HRESULT hr = IExtractIconW_Extract(pExtract, path, idx, &hIconLarge, &hicon, MAKELONG(0 ,GetSystemMetrics(SM_CXSMICON)));

    if (SUCCEEDED(hr))
     DestroyIcon(hIconLarge);
   }

   return hicon;
  }
 }

 return 0;
}
