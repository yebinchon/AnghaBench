#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_14__ {int dwFileAttributes; int /*<<< orphan*/  nFileSizeHigh; int /*<<< orphan*/  nFileSizeLow; int /*<<< orphan*/  ftLastWriteTime; int /*<<< orphan*/  ftLastAccessTime; int /*<<< orphan*/  ftCreationTime; } ;
typedef  TYPE_2__ WIN32_FIND_DATAW ;
struct TYPE_15__ {int dwFileAttributes; int /*<<< orphan*/  nFileSizeHigh; int /*<<< orphan*/  nFileSizeLow; int /*<<< orphan*/  ftLastWriteTime; int /*<<< orphan*/  ftLastAccessTime; int /*<<< orphan*/  ftCreationTime; } ;
typedef  TYPE_3__ WIN32_FILE_ATTRIBUTE_DATA ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_17__ {int member_3; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_13__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* UNION_MEMBER ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  member_2; TYPE_1__ member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_12__ {int /*<<< orphan*/  cfStrFName; } ;
typedef  TYPE_4__ STGMEDIUM ;
typedef  int SFGAOF ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  LPCITEMIDLIST ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int /*<<< orphan*/  IDataObject ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_5__ FORMATETC ;

/* Variables and functions */
 int /*<<< orphan*/  DVASPECT_CONTENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FILE_ATTRIBUTE_COMPRESSED ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int FILE_ATTRIBUTE_READONLY ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  GetFileExInfoStandard ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_10__ Globals ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_5__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDataObject ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SEM_FAILCRITICALERRORS ; 
 int SFGAO_COMPRESSED ; 
 int SFGAO_FILESYSTEM ; 
 int SFGAO_FOLDER ; 
 int SFGAO_HASSUBFOLDER ; 
 int SFGAO_READONLY ; 
 int /*<<< orphan*/  SHGDFIL_FINDDATA ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TYMED_HGLOBAL ; 
 int /*<<< orphan*/  hGlobal ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(IShellFolder* folder, LPCITEMIDLIST pidl, SFGAOF attribs, WIN32_FIND_DATAW* w32fdata)
{
	if (!(attribs & SFGAO_FILESYSTEM) ||
			FUNC0(FUNC8(folder, pidl, SHGDFIL_FINDDATA, w32fdata, sizeof(WIN32_FIND_DATAW)))) {
		WIN32_FILE_ATTRIBUTE_DATA fad;
		IDataObject* pDataObj;

		STGMEDIUM medium = {0, 0, 0};
		FORMATETC fmt = {Globals.cfStrFName, 0, DVASPECT_CONTENT, -1, TYMED_HGLOBAL};

		HRESULT hr = FUNC7(folder, 0, 1, &pidl, &IID_IDataObject, 0, (LPVOID*)&pDataObj);

		if (FUNC9(hr)) {
			hr = FUNC5(pDataObj, &fmt, &medium);

			FUNC6(pDataObj);

			if (FUNC9(hr)) {
				LPCWSTR path = FUNC3(medium.UNION_MEMBER(hGlobal));
				UINT sem_org = FUNC10(SEM_FAILCRITICALERRORS);

				if (FUNC1(path, GetFileExInfoStandard, &fad)) {
					w32fdata->dwFileAttributes = fad.dwFileAttributes;
					w32fdata->ftCreationTime = fad.ftCreationTime;
					w32fdata->ftLastAccessTime = fad.ftLastAccessTime;
					w32fdata->ftLastWriteTime = fad.ftLastWriteTime;

					if (!(fad.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY)) {
						w32fdata->nFileSizeLow = fad.nFileSizeLow;
						w32fdata->nFileSizeHigh = fad.nFileSizeHigh;
					}
				}

				FUNC10(sem_org);

				FUNC4(medium.UNION_MEMBER(hGlobal));
				FUNC2(medium.UNION_MEMBER(hGlobal));
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