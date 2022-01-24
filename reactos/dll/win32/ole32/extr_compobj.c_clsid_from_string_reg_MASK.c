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
typedef  int /*<<< orphan*/  buf2 ;
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  LPCOLESTR ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int /*<<< orphan*/  CLSID ;

/* Variables and functions */
 int CHARS_IN_GUID ; 
 int /*<<< orphan*/  CO_E_CLASSSTRING ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MAXIMUM_ALLOWED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC13(LPCOLESTR progid, CLSID *clsid)
{
    static const WCHAR clsidW[] = { '\\','C','L','S','I','D',0 };
    WCHAR buf2[CHARS_IN_GUID];
    LONG buf2len = sizeof(buf2);
    HKEY xhkey;
    WCHAR *buf;

    FUNC11(clsid, 0, sizeof(*clsid));
    buf = FUNC1( FUNC0(),0,(FUNC10(progid)+8) * sizeof(WCHAR) );
    if (!buf) return E_OUTOFMEMORY;
    FUNC9( buf, progid );
    FUNC8( buf, clsidW );
    if (FUNC12(HKEY_CLASSES_ROOT, buf, MAXIMUM_ALLOWED, &xhkey))
    {
        FUNC2(FUNC0(),0,buf);
        FUNC5("couldn't open key for ProgID %s\n", FUNC6(progid));
        return CO_E_CLASSSTRING;
    }
    FUNC2(FUNC0(),0,buf);

    if (FUNC4(xhkey,NULL,buf2,&buf2len))
    {
        FUNC3(xhkey);
        FUNC5("couldn't query clsid value for ProgID %s\n", FUNC6(progid));
        return CO_E_CLASSSTRING;
    }
    FUNC3(xhkey);
    return FUNC7(buf2, clsid) ? S_OK : CO_E_CLASSSTRING;
}