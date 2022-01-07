
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_14__ {int dwFileAttributes; int nFileSizeHigh; int nFileSizeLow; int ftLastWriteTime; int ftLastAccessTime; int ftCreationTime; } ;
typedef TYPE_2__ WIN32_FIND_DATAW ;
struct TYPE_15__ {int dwFileAttributes; int nFileSizeHigh; int nFileSizeLow; int ftLastWriteTime; int ftLastAccessTime; int ftCreationTime; } ;
typedef TYPE_3__ WIN32_FILE_ATTRIBUTE_DATA ;
typedef int UINT ;
struct TYPE_17__ {int member_3; int member_4; int member_2; int member_1; int member_0; } ;
struct TYPE_13__ {int member_0; } ;
struct TYPE_16__ {int (* UNION_MEMBER ) (int ) ;int member_2; TYPE_1__ member_1; int member_0; } ;
struct TYPE_12__ {int cfStrFName; } ;
typedef TYPE_4__ STGMEDIUM ;
typedef int SFGAOF ;
typedef int LPVOID ;
typedef int LPCWSTR ;
typedef int LPCITEMIDLIST ;
typedef int IShellFolder ;
typedef int IDataObject ;
typedef int HRESULT ;
typedef TYPE_5__ FORMATETC ;


 int DVASPECT_CONTENT ;
 scalar_t__ FAILED (int ) ;
 int FILE_ATTRIBUTE_COMPRESSED ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILE_ATTRIBUTE_READONLY ;
 scalar_t__ GetFileAttributesExW (int ,int ,TYPE_3__*) ;
 int GetFileExInfoStandard ;
 int GlobalFree (int ) ;
 int GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 TYPE_10__ Globals ;
 int IDataObject_GetData (int *,TYPE_5__*,TYPE_4__*) ;
 int IDataObject_Release (int *) ;
 int IID_IDataObject ;
 int IShellFolder_GetUIObjectOf (int *,int ,int,int *,int *,int ,int *) ;
 int SEM_FAILCRITICALERRORS ;
 int SFGAO_COMPRESSED ;
 int SFGAO_FILESYSTEM ;
 int SFGAO_FOLDER ;
 int SFGAO_HASSUBFOLDER ;
 int SFGAO_READONLY ;
 int SHGDFIL_FINDDATA ;
 int SHGetDataFromIDListW (int *,int ,int ,TYPE_2__*,int) ;
 scalar_t__ SUCCEEDED (int ) ;
 int SetErrorMode (int ) ;
 int TYMED_HGLOBAL ;
 int hGlobal ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 int stub3 (int ) ;

__attribute__((used)) static void fill_w32fdata_shell(IShellFolder* folder, LPCITEMIDLIST pidl, SFGAOF attribs, WIN32_FIND_DATAW* w32fdata)
{
 if (!(attribs & SFGAO_FILESYSTEM) ||
   FAILED(SHGetDataFromIDListW(folder, pidl, SHGDFIL_FINDDATA, w32fdata, sizeof(WIN32_FIND_DATAW)))) {
  WIN32_FILE_ATTRIBUTE_DATA fad;
  IDataObject* pDataObj;

  STGMEDIUM medium = {0, {0}, 0};
  FORMATETC fmt = {Globals.cfStrFName, 0, DVASPECT_CONTENT, -1, TYMED_HGLOBAL};

  HRESULT hr = IShellFolder_GetUIObjectOf(folder, 0, 1, &pidl, &IID_IDataObject, 0, (LPVOID*)&pDataObj);

  if (SUCCEEDED(hr)) {
   hr = IDataObject_GetData(pDataObj, &fmt, &medium);

   IDataObject_Release(pDataObj);

   if (SUCCEEDED(hr)) {
    LPCWSTR path = GlobalLock(medium.UNION_MEMBER(hGlobal));
    UINT sem_org = SetErrorMode(SEM_FAILCRITICALERRORS);

    if (GetFileAttributesExW(path, GetFileExInfoStandard, &fad)) {
     w32fdata->dwFileAttributes = fad.dwFileAttributes;
     w32fdata->ftCreationTime = fad.ftCreationTime;
     w32fdata->ftLastAccessTime = fad.ftLastAccessTime;
     w32fdata->ftLastWriteTime = fad.ftLastWriteTime;

     if (!(fad.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)) {
      w32fdata->nFileSizeLow = fad.nFileSizeLow;
      w32fdata->nFileSizeHigh = fad.nFileSizeHigh;
     }
    }

    SetErrorMode(sem_org);

    GlobalUnlock(medium.UNION_MEMBER(hGlobal));
    GlobalFree(medium.UNION_MEMBER(hGlobal));
   }
  }
 }

 if (attribs & (SFGAO_FOLDER|SFGAO_HASSUBFOLDER))
  w32fdata->dwFileAttributes |= FILE_ATTRIBUTE_DIRECTORY;

 if (attribs & SFGAO_READONLY)
  w32fdata->dwFileAttributes |= FILE_ATTRIBUTE_READONLY;

 if (attribs & SFGAO_COMPRESSED)
  w32fdata->dwFileAttributes |= FILE_ATTRIBUTE_COMPRESSED;
}
