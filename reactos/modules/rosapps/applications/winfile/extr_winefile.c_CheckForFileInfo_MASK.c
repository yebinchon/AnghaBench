#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct PropertiesDialog {int /*<<< orphan*/  pVersionData; } ;
struct LANGANDCODEPAGE {int /*<<< orphan*/  wCodePage; int /*<<< orphan*/  wLanguage; } ;
typedef  char WCHAR ;
struct TYPE_2__ {int /*<<< orphan*/  dwFileVersionLS; int /*<<< orphan*/  dwFileVersionMS; } ;
typedef  TYPE_1__ VS_FIXEDFILEINFO ;
typedef  int UINT ;
typedef  scalar_t__* PVOID ;
typedef  scalar_t__ LPVOID ;
typedef  scalar_t__ LPCWSTR ;
typedef  scalar_t__ LPCSTR ;
typedef  scalar_t__ LPBYTE ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int BUFFER_LEN ; 
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  IDC_LIST_PROP_VERSION_TYPES ; 
 int /*<<< orphan*/  IDC_LIST_PROP_VERSION_VALUES ; 
 int /*<<< orphan*/  IDC_STATIC_PROP_VERSION ; 
 scalar_t__* InfoStrings ; 
 int /*<<< orphan*/  LB_ADDSTRING ; 
 int /*<<< orphan*/  LB_SETCURSEL ; 
 int /*<<< orphan*/  LB_SETITEMDATA ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char const*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC14(struct PropertiesDialog* dlg, HWND hwnd, LPCWSTR strFilename)
{
	static const WCHAR sBackSlash[] = {'\\','\0'};
	static const WCHAR sTranslation[] = {'\\','V','a','r','F','i','l','e','I','n','f','o','\\','T','r','a','n','s','l','a','t','i','o','n','\0'};
	static const WCHAR sStringFileInfo[] = {'\\','S','t','r','i','n','g','F','i','l','e','I','n','f','o','\\',
										'%','0','4','x','%','0','4','x','\\','%','s','\0'};
        static const WCHAR sFmt[] = {'%','d','.','%','d','.','%','d','.','%','d','\0'};
	DWORD dwVersionDataLen = FUNC1(strFilename, NULL);

	if (dwVersionDataLen) {
		dlg->pVersionData = FUNC5(FUNC3(), 0, dwVersionDataLen);

		if (FUNC2(strFilename, 0, dwVersionDataLen, dlg->pVersionData)) {
			LPVOID pVal;
			UINT nValLen;

			if (FUNC11(dlg->pVersionData, sBackSlash, &pVal, &nValLen)) {
				if (nValLen == sizeof(VS_FIXEDFILEINFO)) {
					VS_FIXEDFILEINFO* pFixedFileInfo = (VS_FIXEDFILEINFO*)pVal;
                                        WCHAR buffer[BUFFER_LEN];

                                        FUNC12(buffer, sFmt,
                                                 FUNC4(pFixedFileInfo->dwFileVersionMS), FUNC6(pFixedFileInfo->dwFileVersionMS),
                                                 FUNC4(pFixedFileInfo->dwFileVersionLS), FUNC6(pFixedFileInfo->dwFileVersionLS));

                                        FUNC10(hwnd, IDC_STATIC_PROP_VERSION, buffer);
				}
			}

			/* Read the list of languages and code pages. */
			if (FUNC11(dlg->pVersionData, sTranslation, &pVal, &nValLen)) {
				struct LANGANDCODEPAGE* pTranslate = (struct LANGANDCODEPAGE*)pVal;
				struct LANGANDCODEPAGE* pEnd = (struct LANGANDCODEPAGE*)((LPBYTE)pVal+nValLen);

				HWND hlbox = FUNC0(hwnd, IDC_LIST_PROP_VERSION_TYPES);

				/* Read the file description for each language and code page. */
				for(; pTranslate<pEnd; ++pTranslate) {
					LPCSTR* p;

					for(p=InfoStrings; *p; ++p) {
						WCHAR subblock[200];
						WCHAR infoStr[100];
						LPCWSTR pTxt;
						UINT nValLen;

						LPCSTR pInfoString = *p;
						FUNC7(CP_ACP, 0, pInfoString, -1, infoStr, 100);
						FUNC13(subblock, sStringFileInfo, pTranslate->wLanguage, pTranslate->wCodePage, infoStr);

						/* Retrieve file description for language and code page */
						if (FUNC11(dlg->pVersionData, subblock, (PVOID)&pTxt, &nValLen)) {
							int idx = FUNC9(hlbox, LB_ADDSTRING, 0L, (LPARAM)infoStr);
							FUNC9(hlbox, LB_SETITEMDATA, idx, (LPARAM)pTxt);
						}
					}
				}

				FUNC9(hlbox, LB_SETCURSEL, 0, 0);

				FUNC8(hlbox, FUNC0(hwnd,IDC_LIST_PROP_VERSION_VALUES));
			}
		}
	}
}