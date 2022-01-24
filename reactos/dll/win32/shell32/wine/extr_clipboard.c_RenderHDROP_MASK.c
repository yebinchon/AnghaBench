#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WCHAR ;
typedef  int UINT ;
struct TYPE_3__ {int pFiles; int /*<<< orphan*/  fWide; } ;
typedef  int /*<<< orphan*/  LPITEMIDLIST ;
typedef  int /*<<< orphan*/ * HGLOBAL ;
typedef  TYPE_1__ DROPFILES ;

/* Variables and functions */
 int GHND ; 
 int GMEM_SHARE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,scalar_t__*) ; 
 int FUNC13 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*,scalar_t__*) ; 
 int FUNC15 (scalar_t__*) ; 

HGLOBAL FUNC16(LPITEMIDLIST pidlRoot, LPITEMIDLIST * apidl, UINT cidl)
{
	UINT i;
#ifdef __REACTOS__
        int size = 0;
#else
	int rootlen = 0,size = 0;
	WCHAR wszRootPath[MAX_PATH];
#endif
	WCHAR wszFileName[MAX_PATH];
	HGLOBAL hGlobal = NULL;
	DROPFILES *pDropFiles;
	int offset;
#ifdef __REACTOS__
        LPITEMIDLIST *pidls;
#endif

	FUNC10("(%p,%p,%u)\n", pidlRoot, apidl, cidl);

#ifdef __REACTOS__
        pidls = (LPITEMIDLIST *)HeapAlloc(GetProcessHeap(), 0, cidl * sizeof(*pidls));
        if (!pidls)
            goto cleanup;
#endif

	/* get the size needed */
	size = sizeof(DROPFILES);

#ifndef __REACTOS__
	FUNC9(pidlRoot, wszRootPath);
	FUNC8(wszRootPath);
	rootlen = FUNC13(wszRootPath);
#endif

	for (i=0; i<cidl;i++)
	{
#ifdef __REACTOS__
          pidls[i] = ILCombine(pidlRoot, apidl[i]);
          SHGetPathFromIDListW(pidls[i], wszFileName);
          size += (wcslen(wszFileName) + 1) * sizeof(WCHAR);
#else
	  FUNC11(apidl[i], wszFileName, MAX_PATH);
	  size += (rootlen + FUNC13(wszFileName) + 1) * sizeof(WCHAR);
#endif
	}

	size += sizeof(WCHAR);

	/* Fill the structure */
	hGlobal = FUNC1(GHND|GMEM_SHARE, size);
#ifdef __REACTOS__
        if(!hGlobal) goto cleanup;
#else
	if(!hGlobal) return hGlobal;
#endif

        pDropFiles = FUNC2(hGlobal);
	offset = (sizeof(DROPFILES) + sizeof(WCHAR) - 1) / sizeof(WCHAR);
        pDropFiles->pFiles = offset * sizeof(WCHAR);
        pDropFiles->fWide = TRUE;

#ifndef __REACTOS__
	FUNC12(wszFileName, wszRootPath);
#endif

	for (i=0; i<cidl;i++)
	{

#ifdef __REACTOS__
          SHGetPathFromIDListW(pidls[i], wszFileName);
          wcscpy(((WCHAR*)pDropFiles)+offset, wszFileName);
          offset += wcslen(wszFileName) + 1;
          ILFree(pidls[i]);
#else
	  FUNC11(apidl[i], wszFileName + rootlen, MAX_PATH - rootlen);
	  FUNC12(((WCHAR*)pDropFiles)+offset, wszFileName);
	  offset += FUNC13(wszFileName) + 1;
#endif
	}

	((WCHAR*)pDropFiles)[offset] = 0;
	FUNC3(hGlobal);

#ifdef __REACTOS__
cleanup:
    if(pidls)
        HeapFree(GetProcessHeap(), 0, pidls);
#endif

	return hGlobal;
}