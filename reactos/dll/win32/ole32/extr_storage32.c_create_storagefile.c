
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tempPath ;
typedef int tempFileName ;
typedef char WCHAR ;
struct TYPE_6__ {scalar_t__ ulSectorSize; } ;
struct TYPE_5__ {int IStorage_iface; } ;
typedef TYPE_1__ StorageBaseImpl ;
typedef TYPE_2__ STGOPTIONS ;
typedef int REFIID ;
typedef char* LPCOLESTR ;
typedef int HRESULT ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 scalar_t__ CreateFileW (char*,int,int,int *,int,int,int ) ;
 scalar_t__ ERROR_FILE_EXISTS ;
 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_FLAG_DELETE_ON_CLOSE ;
 int FILE_FLAG_RANDOM_ACCESS ;
 int GetAccessModeFromSTGM (int) ;
 int GetCreationModeFromSTGM (int) ;
 scalar_t__ GetLastError () ;
 int GetShareModeFromSTGM (int) ;
 scalar_t__ GetTempFileNameW (char*,char const*,int ,char*) ;
 scalar_t__ GetTempPathW (int,char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int IStorage_QueryInterface (int *,int ,void**) ;
 int IStorage_Release (int *) ;
 scalar_t__ MAX_BIG_BLOCK_SIZE ;
 int MAX_PATH ;
 scalar_t__ MIN_BIG_BLOCK_SIZE ;
 int STGM_ACCESS_MODE (int) ;
 int STGM_DELETEONRELEASE ;

 int STGM_SHARE_DENY_NONE ;
 scalar_t__ STGM_SHARE_EXCLUSIVE ;
 scalar_t__ STGM_SHARE_MODE (int) ;
 int STGM_TRANSACTED ;

 int STG_E_FILEALREADYEXISTS ;
 int STG_E_INSUFFICIENTMEMORY ;
 int STG_E_INVALIDFLAG ;
 int STG_E_INVALIDPARAMETER ;
 int STG_E_INVALIDPOINTER ;
 int Storage_Construct (scalar_t__,char*,int *,int,int ,int ,scalar_t__,TYPE_1__**) ;
 int TRACE (char*,void*,int ) ;
 int TRUE ;
 int TRUNCATE_EXISTING ;
 int memset (char*,int ,int) ;
 int validateSTGM (int) ;

__attribute__((used)) static HRESULT create_storagefile(
  LPCOLESTR pwcsName,
  DWORD grfMode,
  DWORD grfAttrs,
  STGOPTIONS* pStgOptions,
  REFIID riid,
  void** ppstgOpen)
{
  StorageBaseImpl* newStorage = 0;
  HANDLE hFile = INVALID_HANDLE_VALUE;
  HRESULT hr = STG_E_INVALIDFLAG;
  DWORD shareMode;
  DWORD accessMode;
  DWORD creationMode;
  DWORD fileAttributes;
  WCHAR tempFileName[MAX_PATH];

  if (ppstgOpen == 0)
    return STG_E_INVALIDPOINTER;

  if (pStgOptions->ulSectorSize != MIN_BIG_BLOCK_SIZE && pStgOptions->ulSectorSize != MAX_BIG_BLOCK_SIZE)
    return STG_E_INVALIDPARAMETER;


  if (STGM_SHARE_MODE(grfMode) == 0)
      grfMode |= STGM_SHARE_DENY_NONE;

  if ( FAILED( validateSTGM(grfMode) ))
    goto end;


  switch(STGM_ACCESS_MODE(grfMode))
  {
  case 128:
  case 129:
    break;
  default:
    goto end;
  }


  if (!(grfMode & STGM_TRANSACTED) && (STGM_SHARE_MODE(grfMode) != STGM_SHARE_EXCLUSIVE))
    goto end;






  if (pwcsName == 0)
  {
    WCHAR tempPath[MAX_PATH];
    static const WCHAR prefix[] = { 'S', 'T', 'O', 0 };

    memset(tempPath, 0, sizeof(tempPath));
    memset(tempFileName, 0, sizeof(tempFileName));

    if ((GetTempPathW(MAX_PATH, tempPath)) == 0 )
      tempPath[0] = '.';

    if (GetTempFileNameW(tempPath, prefix, 0, tempFileName) != 0)
      pwcsName = tempFileName;
    else
    {
      hr = STG_E_INSUFFICIENTMEMORY;
      goto end;
    }

    creationMode = TRUNCATE_EXISTING;
  }
  else
  {
    creationMode = GetCreationModeFromSTGM(grfMode);
  }




  shareMode = GetShareModeFromSTGM(grfMode);
  accessMode = GetAccessModeFromSTGM(grfMode);

  if (grfMode & STGM_DELETEONRELEASE)
    fileAttributes = FILE_FLAG_RANDOM_ACCESS | FILE_FLAG_DELETE_ON_CLOSE;
  else
    fileAttributes = FILE_ATTRIBUTE_NORMAL | FILE_FLAG_RANDOM_ACCESS;

  *ppstgOpen = 0;

  hFile = CreateFileW(pwcsName,
                        accessMode,
                        shareMode,
                        ((void*)0),
                        creationMode,
                        fileAttributes,
                        0);

  if (hFile == INVALID_HANDLE_VALUE)
  {
    if(GetLastError() == ERROR_FILE_EXISTS)
      hr = STG_E_FILEALREADYEXISTS;
    else
      hr = E_FAIL;
    goto end;
  }




  hr = Storage_Construct(
         hFile,
        pwcsName,
         ((void*)0),
         grfMode,
         TRUE,
         TRUE,
         pStgOptions->ulSectorSize,
         &newStorage);

  if (FAILED(hr))
  {
    goto end;
  }

  hr = IStorage_QueryInterface(&newStorage->IStorage_iface, riid, ppstgOpen);
  IStorage_Release(&newStorage->IStorage_iface);

end:
  TRACE("<-- %p  r = %08x\n", *ppstgOpen, hr);

  return hr;
}
