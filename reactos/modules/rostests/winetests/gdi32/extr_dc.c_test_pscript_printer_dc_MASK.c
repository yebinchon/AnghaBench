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
typedef  int /*<<< orphan*/  query ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  HDC ;
typedef  int DWORD ;

/* Variables and functions */
 int CLOSECHANNEL ; 
 int DOWNLOADFACE ; 
 int DOWNLOADHEADER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int GETFACENAME ; 
 int OPENCHANNEL ; 
 int POSTSCRIPT_PASSTHROUGH ; 
 int /*<<< orphan*/  QUERYESCSUPPORT ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

__attribute__((used)) static void FUNC9(void)
{
    HDC hdc;
    char buf[256];
    DWORD query, ret;

    hdc = FUNC3(100, FALSE);

    if (!hdc) return;

    if (!FUNC4(hdc))
    {
        FUNC7("Default printer is not a PostScript device\n");
        FUNC0( hdc );
        return;
    }

    query = GETFACENAME;
    ret = FUNC1(hdc, QUERYESCSUPPORT, sizeof(query), (LPCSTR)&query, NULL);
    FUNC5(!ret, "GETFACENAME is supported\n");

    query = DOWNLOADFACE;
    ret = FUNC1(hdc, QUERYESCSUPPORT, sizeof(query), (LPCSTR)&query, NULL);
    FUNC5(ret == 1, "DOWNLOADFACE is not supported\n");

    query = OPENCHANNEL;
    ret = FUNC1(hdc, QUERYESCSUPPORT, sizeof(query), (LPCSTR)&query, NULL);
    FUNC5(ret == 1, "OPENCHANNEL is not supported\n");

    query = DOWNLOADHEADER;
    ret = FUNC1(hdc, QUERYESCSUPPORT, sizeof(query), (LPCSTR)&query, NULL);
    FUNC5(ret == 1, "DOWNLOADHEADER is not supported\n");

    query = CLOSECHANNEL;
    ret = FUNC1(hdc, QUERYESCSUPPORT, sizeof(query), (LPCSTR)&query, NULL);
    FUNC5(ret == 1, "CLOSECHANNEL is not supported\n");

    query = POSTSCRIPT_PASSTHROUGH;
    ret = FUNC1(hdc, QUERYESCSUPPORT, sizeof(query), (LPCSTR)&query, NULL);
    FUNC5(ret == 1, "POSTSCRIPT_PASSTHROUGH is not supported\n");

    ret = FUNC2(hdc, GETFACENAME, 0, NULL, sizeof(buf), buf);
    FUNC5(ret == 1, "GETFACENAME failed\n");
    FUNC8("face name: %s\n", buf);

    FUNC6(hdc);

    FUNC0(hdc);
}