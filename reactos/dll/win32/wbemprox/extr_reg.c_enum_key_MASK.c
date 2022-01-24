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
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int LONG ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ERROR_NO_MORE_ITEMS ; 
 int ERROR_SUCCESS ; 
 scalar_t__ E_OUTOFMEMORY ; 
 int /*<<< orphan*/  KEY_ENUMERATE_SUB_KEYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VT_UI4 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC14( HKEY root, const WCHAR *subkey, VARIANT *names, VARIANT *retval )
{
    HKEY hkey;
    HRESULT hr = S_OK;
    WCHAR buf[256];
    BSTR *strings, *tmp;
    DWORD count = 2, len = FUNC0( buf );
    LONG res, i = 0;

    FUNC6("%p, %s\n", root, FUNC7(subkey));

    if (!(strings = FUNC9( count * sizeof(BSTR) ))) return E_OUTOFMEMORY;
    if ((res = FUNC3( root, subkey, 0, KEY_ENUMERATE_SUB_KEYS, &hkey )))
    {
        FUNC12( VT_UI4, res, NULL, retval );
        FUNC10( strings );
        return S_OK;
    }
    for (;;)
    {
        if (i >= count)
        {
            count *= 2;
            if (!(tmp = FUNC11( strings, count * sizeof(BSTR) )))
            {
                FUNC1( hkey );
                return E_OUTOFMEMORY;
            }
            strings = tmp;
        }
        if ((res = FUNC2( hkey, i, buf, len )) == ERROR_NO_MORE_ITEMS)
        {
            if (i) res = ERROR_SUCCESS;
            break;
        }
        if (res) break;
        if (!(strings[i] = FUNC4( buf )))
        {
            for (i--; i >= 0; i--) FUNC5( strings[i] );
            hr = E_OUTOFMEMORY;
            break;
        }
        i++;
    }
    if (hr == S_OK && !res)
    {
        hr = FUNC13( strings, i, names );
        FUNC8( strings, i );
    }
    FUNC12( VT_UI4, res, NULL, retval );
    FUNC1( hkey );
    FUNC10( strings );
    return hr;
}