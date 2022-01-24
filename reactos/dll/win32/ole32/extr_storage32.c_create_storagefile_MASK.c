#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tempPath ;
typedef  int /*<<< orphan*/  tempFileName ;
typedef  char WCHAR ;
struct TYPE_6__ {scalar_t__ ulSectorSize; } ;
struct TYPE_5__ {int /*<<< orphan*/  IStorage_iface; } ;
typedef  TYPE_1__ StorageBaseImpl ;
typedef  TYPE_2__ STGOPTIONS ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  char* LPCOLESTR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,int,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_FILE_EXISTS ; 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FILE_ATTRIBUTE_NORMAL ; 
 int FILE_FLAG_DELETE_ON_CLOSE ; 
 int FILE_FLAG_RANDOM_ACCESS ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 int FUNC5 (int) ; 
 scalar_t__ FUNC6 (char*,char const*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int,char*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ MAX_BIG_BLOCK_SIZE ; 
 int MAX_PATH ; 
 scalar_t__ MIN_BIG_BLOCK_SIZE ; 
 int FUNC10 (int) ; 
 int STGM_DELETEONRELEASE ; 
#define  STGM_READWRITE 129 
 int STGM_SHARE_DENY_NONE ; 
 scalar_t__ STGM_SHARE_EXCLUSIVE ; 
 scalar_t__ FUNC11 (int) ; 
 int STGM_TRANSACTED ; 
#define  STGM_WRITE 128 
 int /*<<< orphan*/  STG_E_FILEALREADYEXISTS ; 
 int /*<<< orphan*/  STG_E_INSUFFICIENTMEMORY ; 
 int /*<<< orphan*/  STG_E_INVALIDFLAG ; 
 int /*<<< orphan*/  STG_E_INVALIDPARAMETER ; 
 int /*<<< orphan*/  STG_E_INVALIDPOINTER ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC13 (char*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int TRUNCATE_EXISTING ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

__attribute__((used)) static HRESULT FUNC16(
  LPCOLESTR pwcsName,
  DWORD       grfMode,
  DWORD       grfAttrs,
  STGOPTIONS* pStgOptions,
  REFIID      riid,
  void**      ppstgOpen)
{
  StorageBaseImpl* newStorage = 0;
  HANDLE       hFile      = INVALID_HANDLE_VALUE;
  HRESULT        hr         = STG_E_INVALIDFLAG;
  DWORD          shareMode;
  DWORD          accessMode;
  DWORD          creationMode;
  DWORD          fileAttributes;
  WCHAR          tempFileName[MAX_PATH];

  if (ppstgOpen == 0)
    return STG_E_INVALIDPOINTER;

  if (pStgOptions->ulSectorSize != MIN_BIG_BLOCK_SIZE && pStgOptions->ulSectorSize != MAX_BIG_BLOCK_SIZE)
    return STG_E_INVALIDPARAMETER;

  /* if no share mode given then DENY_NONE is the default */
  if (FUNC11(grfMode) == 0)
      grfMode |= STGM_SHARE_DENY_NONE;

  if ( FUNC1( FUNC15(grfMode) ))
    goto end;

  /* StgCreateDocFile seems to refuse readonly access, despite MSDN */
  switch(FUNC10(grfMode))
  {
  case STGM_WRITE:
  case STGM_READWRITE:
    break;
  default:
    goto end;
  }

  /* in direct mode, can only use SHARE_EXCLUSIVE */
  if (!(grfMode & STGM_TRANSACTED) && (FUNC11(grfMode) != STGM_SHARE_EXCLUSIVE))
    goto end;

  /* but in transacted mode, any share mode is valid */

  /*
   * Generate a unique name.
   */
  if (pwcsName == 0)
  {
    WCHAR tempPath[MAX_PATH];
    static const WCHAR prefix[] = { 'S', 'T', 'O', 0 };

    FUNC14(tempPath, 0, sizeof(tempPath));
    FUNC14(tempFileName, 0, sizeof(tempFileName));

    if ((FUNC7(MAX_PATH, tempPath)) == 0 )
      tempPath[0] = '.';

    if (FUNC6(tempPath, prefix, 0, tempFileName) != 0)
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
    creationMode = FUNC3(grfMode);
  }

  /*
   * Interpret the STGM value grfMode
   */
  shareMode    = FUNC5(grfMode);
  accessMode   = FUNC2(grfMode);

  if (grfMode & STGM_DELETEONRELEASE)
    fileAttributes = FILE_FLAG_RANDOM_ACCESS | FILE_FLAG_DELETE_ON_CLOSE;
  else
    fileAttributes = FILE_ATTRIBUTE_NORMAL | FILE_FLAG_RANDOM_ACCESS;

  *ppstgOpen = 0;

  hFile = FUNC0(pwcsName,
                        accessMode,
                        shareMode,
                        NULL,
                        creationMode,
                        fileAttributes,
                        0);

  if (hFile == INVALID_HANDLE_VALUE)
  {
    if(FUNC4() == ERROR_FILE_EXISTS)
      hr = STG_E_FILEALREADYEXISTS;
    else
      hr = E_FAIL;
    goto end;
  }

  /*
   * Allocate and initialize the new IStorage object.
   */
  hr = FUNC12(
         hFile,
        pwcsName,
         NULL,
         grfMode,
         TRUE,
         TRUE,
         pStgOptions->ulSectorSize,
         &newStorage);

  if (FUNC1(hr))
  {
    goto end;
  }

  hr = FUNC8(&newStorage->IStorage_iface, riid, ppstgOpen);
  FUNC9(&newStorage->IStorage_iface);

end:
  FUNC13("<-- %p  r = %08x\n", *ppstgOpen, hr);

  return hr;
}