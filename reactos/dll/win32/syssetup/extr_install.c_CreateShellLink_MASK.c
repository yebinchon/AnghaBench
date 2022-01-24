#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  IShellLinkW ;
typedef  int /*<<< orphan*/  IPersistFile ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_ShellLink ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IPersistFile ; 
 int /*<<< orphan*/  IID_IShellLink ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static HRESULT
FUNC11(
    LPCWSTR pszLinkPath,
    LPCWSTR pszCmd,
    LPCWSTR pszArg,
    LPCWSTR pszDir,
    LPCWSTR pszIconPath,
    INT iIconNr,
    LPCWSTR pszComment)
{
    IShellLinkW *psl;
    IPersistFile *ppf;

    HRESULT hr = FUNC0(&CLSID_ShellLink, NULL, CLSCTX_INPROC_SERVER, &IID_IShellLink, (LPVOID*)&psl);

    if (FUNC10(hr))
    {
        hr = FUNC8(psl, pszCmd);

        if (pszArg)
            hr = FUNC5(psl, pszArg);

        if (pszDir)
            hr = FUNC9(psl, pszDir);

        if (pszIconPath)
            hr = FUNC7(psl, pszIconPath, iIconNr);

        if (pszComment)
            hr = FUNC6(psl, pszComment);

        hr = FUNC3(psl, &IID_IPersistFile, (LPVOID*)&ppf);

        if (FUNC10(hr))
        {
            hr = FUNC2(ppf, pszLinkPath, TRUE);
            FUNC1(ppf);
        }

        FUNC4(psl);
    }

    return hr;
}