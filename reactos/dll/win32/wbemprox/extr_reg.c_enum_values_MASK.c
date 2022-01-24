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
typedef  int WCHAR ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  size_t LONG ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/ * HKEY ;
typedef  int DWORD ;
typedef  int BSTR ;

/* Variables and functions */
 size_t ERROR_NO_MORE_ITEMS ; 
 size_t ERROR_SUCCESS ; 
 scalar_t__ E_OUTOFMEMORY ; 
 int /*<<< orphan*/  KEY_QUERY_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,size_t,int*,int*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,int const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VT_UI4 ; 
 int /*<<< orphan*/  FUNC7 (int const*) ; 
 int /*<<< orphan*/  FUNC8 (int*,size_t) ; 
 int* FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC14( HKEY root, const WCHAR *subkey, VARIANT *names, VARIANT *types, VARIANT *retval )
{
    HKEY hkey = NULL;
    HRESULT hr = S_OK;
    BSTR *value_names = NULL;
    DWORD count, buflen, len, *value_types = NULL;
    LONG res, i = 0;
    WCHAR *buf = NULL;

    FUNC6("%p, %s\n", root, FUNC7(subkey));

    if ((res = FUNC2( root, subkey, 0, KEY_QUERY_VALUE, &hkey ))) goto done;
    if ((res = FUNC3( hkey, NULL, NULL, NULL, NULL, NULL, NULL, &count, &buflen, NULL, NULL, NULL )))
        goto done;

    hr = E_OUTOFMEMORY;
    if (!(buf = FUNC9( (buflen + 1) * sizeof(WCHAR) ))) goto done;
    if (!(value_names = FUNC9( count * sizeof(BSTR) ))) goto done;
    if (!(value_types = FUNC9( count * sizeof(DWORD) ))) goto done;

    hr = S_OK;
    for (;;)
    {
        len = buflen + 1;
        res = FUNC1( hkey, i, buf, &len, NULL, &value_types[i], NULL, NULL );
        if (res == ERROR_NO_MORE_ITEMS)
        {
            if (i) res = ERROR_SUCCESS;
            break;
        }
        if (res) break;
        if (!(value_names[i] = FUNC4( buf )))
        {
            for (i--; i >= 0; i--) FUNC5( value_names[i] );
            hr = E_OUTOFMEMORY;
            break;
        }
        i++;
    }
    if (hr == S_OK && !res)
    {
        hr = FUNC12( value_names, i, names );
        FUNC8( value_names, i );
        if (hr == S_OK) hr = FUNC13( value_types, i, types );
    }

done:
    FUNC11( VT_UI4, res, NULL, retval );
    FUNC0( hkey );
    FUNC10( value_names );
    FUNC10( value_types );
    FUNC10( buf );
    return hr;
}