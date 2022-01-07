
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* lpBrowseInfo; int hwndTreeView; } ;
typedef TYPE_2__ browse_info ;
typedef int ULONG ;
struct TYPE_5__ {int ulFlags; } ;
typedef int LPWSTR ;
typedef int LPVOID ;
typedef int LPSTR ;
typedef int * LPITEMIDLIST ;
typedef int LPCITEMIDLIST ;
typedef int IShellFolder ;
typedef int IEnumIDList ;
typedef int HWND ;
typedef int HTREEITEM ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;


 int BrowseFlagsToSHCONTF (int ) ;
 scalar_t__ FAILED (int ) ;
 int GetParent (int ) ;
 scalar_t__ IDC_ARROW ;
 scalar_t__ IDC_WAIT ;
 scalar_t__ IEnumIDList_Next (int *,int,int **,int*) ;
 int IEnumIDList_Release (int *) ;
 int IEnumIDList_Reset (int *) ;
 scalar_t__ IEnumIDList_Skip (int *,int) ;
 int IID_IShellFolder ;
 scalar_t__ IShellFolder_BindToObject (int *,int *,int *,int *,int *) ;
 scalar_t__ IShellFolder_EnumObjects (int *,int ,int ,int **) ;
 int IShellFolder_GetAttributesOf (int *,int,int *,int*) ;
 int IShellFolder_Release (int *) ;
 int InsertTreeViewItem (TYPE_2__*,int *,int *,int *,int *,int ) ;
 int LoadCursorA (int ,int ) ;
 int LoadCursorW (int ,int ) ;
 int ReleaseCapture () ;
 int SFGAO_FOLDER ;
 int SFGAO_HASSUBFOLDER ;
 int SHFree (int *) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int SetCapture (int ) ;
 int SetCursor (int ) ;
 int TRACE (char*,int *,int *,int ,int *) ;

__attribute__((used)) static void FillTreeView( browse_info *info, IShellFolder * lpsf,
                 LPITEMIDLIST pidl, HTREEITEM hParent, IEnumIDList* lpe)
{
 LPITEMIDLIST pidlTemp = 0;
 ULONG ulFetched;
 HRESULT hr;
 HWND hwnd = GetParent( info->hwndTreeView );

 TRACE("%p %p %p %p\n",lpsf, pidl, hParent, lpe);


 if (!lpe) return;

 SetCapture( hwnd );
 SetCursor( LoadCursorA( 0, (LPSTR)IDC_WAIT ) );

 while (S_OK == IEnumIDList_Next(lpe,1,&pidlTemp,&ulFetched))
 {
     ULONG ulAttrs = SFGAO_HASSUBFOLDER | SFGAO_FOLDER;
     IEnumIDList* pEnumIL = ((void*)0);
     IShellFolder* pSFChild = ((void*)0);
     IShellFolder_GetAttributesOf(lpsf, 1, (LPCITEMIDLIST*)&pidlTemp, &ulAttrs);
     if (ulAttrs & SFGAO_FOLDER)
     {
         hr = IShellFolder_BindToObject(lpsf,pidlTemp,((void*)0),&IID_IShellFolder,(LPVOID*)&pSFChild);
         if (SUCCEEDED(hr))
                {
             DWORD flags = BrowseFlagsToSHCONTF(info->lpBrowseInfo->ulFlags);
             hr = IShellFolder_EnumObjects(pSFChild, hwnd, flags, &pEnumIL);
                    if (hr == S_OK)
                    {
                        if ((IEnumIDList_Skip(pEnumIL, 1) != S_OK) ||
                             FAILED(IEnumIDList_Reset(pEnumIL)))
                        {
                            IEnumIDList_Release(pEnumIL);
                            pEnumIL = ((void*)0);
                        }
                    }
                    IShellFolder_Release(pSFChild);
                }
     }

     if (!InsertTreeViewItem(info, lpsf, pidlTemp, pidl, pEnumIL, hParent))
         goto done;
     SHFree(pidlTemp);
     pidlTemp=((void*)0);
 }

done:
 ReleaseCapture();
 SetCursor(LoadCursorW(0, (LPWSTR)IDC_ARROW));
    SHFree(pidlTemp);
}
