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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int INTERNET_MAX_URL_LENGTH ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int Uri_CREATE_ALLOW_IMPLICIT_FILE_SCHEME ; 
 int Uri_CREATE_ALLOW_RELATIVE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 

HRESULT FUNC10(const WCHAR *url, IUri **uri)
{
    WCHAR fileUrl[INTERNET_MAX_URL_LENGTH];

    FUNC6("%s\n", FUNC9(url));

    if (!FUNC4(url))
    {
        WCHAR fullpath[MAX_PATH];
        DWORD needed = FUNC0(fileUrl);

        if (!FUNC5(url, fullpath, FUNC0(fullpath)))
        {
            FUNC8("can't find path\n");
            return E_FAIL;
        }

        if (FUNC3(FUNC7(fullpath, fileUrl, &needed, 0)))
        {
            FUNC2("can't create url from path\n");
            return E_FAIL;
        }
        url = fileUrl;
    }

    return FUNC1(url, Uri_CREATE_ALLOW_RELATIVE | Uri_CREATE_ALLOW_IMPLICIT_FILE_SCHEME, 0, uri);
}