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
typedef  int /*<<< orphan*/  mime ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,scalar_t__) ; 

HRESULT FUNC8(const WCHAR *ext, WCHAR **ret)
{
    DWORD res, size;
    WCHAR mime[64];
    HKEY hkey;

    static const WCHAR content_typeW[] = {'C','o','n','t','e','n','t',' ','T','y','p','e','\0'};

    res = FUNC3(HKEY_CLASSES_ROOT, ext, &hkey);
    if(res != ERROR_SUCCESS)
        return FUNC1(res);

    size = sizeof(mime);
    res = FUNC4(hkey, content_typeW, NULL, NULL, (LPBYTE)mime, &size);
    FUNC2(hkey);
    if(res != ERROR_SUCCESS)
        return FUNC1(res);

    FUNC5("found MIME %s\n", FUNC6(mime));

    *ret = FUNC0(size);
    FUNC7(*ret, mime, size);
    return S_OK;
}