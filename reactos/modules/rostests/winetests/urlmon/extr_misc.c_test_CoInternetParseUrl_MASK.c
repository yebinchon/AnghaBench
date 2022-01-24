#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  buf ;
struct TYPE_8__ {scalar_t__ secur_hres; scalar_t__ path_hres; scalar_t__ domain_hres; scalar_t__ rootdocument_hres; scalar_t__ rootdocument; int /*<<< orphan*/  url; scalar_t__ domain; scalar_t__ schema; scalar_t__ path; scalar_t__ encoded_url; } ;
typedef  TYPE_1__ WCHAR ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ E_POINTER ; 
 int /*<<< orphan*/  PARSE_DOMAIN ; 
 int /*<<< orphan*/  PARSE_ENCODE ; 
 int /*<<< orphan*/  PARSE_PATH_FROM_URL ; 
 int /*<<< orphan*/  PARSE_ROOTDOCUMENT ; 
 int /*<<< orphan*/  PARSE_SCHEMA ; 
 int /*<<< orphan*/  PARSE_SECURITY_URL ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* parse_tests ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  wszAbout ; 
 int /*<<< orphan*/  wszRes ; 

__attribute__((used)) static void FUNC8(void)
{
    HRESULT hres;
    DWORD size;
    int i;

    static WCHAR buf[4096];

    FUNC4(buf, 0xf0, sizeof(buf));
    hres = FUNC6(parse_tests[0].url, PARSE_SCHEMA, 0, buf,
            3, &size, 0);
    FUNC5(hres == E_POINTER, "schema failed: %08x, expected E_POINTER\n", hres);

    for(i = 0; i < FUNC0(parse_tests); i++) {
        FUNC4(buf, 0xf0, sizeof(buf));
        hres = FUNC6(parse_tests[i].url, PARSE_SECURITY_URL, 0, buf,
                FUNC0(buf), &size, 0);
        FUNC5(hres == parse_tests[i].secur_hres, "[%d] security url failed: %08x, expected %08x\n",
                i, hres, parse_tests[i].secur_hres);

        FUNC4(buf, 0xf0, sizeof(buf));
        hres = FUNC6(parse_tests[i].url, PARSE_ENCODE, 0, buf,
                FUNC0(buf), &size, 0);
        FUNC5(hres == S_OK, "[%d] encoding failed: %08x\n", i, hres);
        FUNC5(size == FUNC2(parse_tests[i].encoded_url), "[%d] wrong size\n", i);
        FUNC5(!FUNC1(parse_tests[i].encoded_url, buf), "[%d] wrong encoded url\n", i);

        FUNC4(buf, 0xf0, sizeof(buf));
        hres = FUNC6(parse_tests[i].url, PARSE_PATH_FROM_URL, 0, buf,
                FUNC0(buf), &size, 0);
        FUNC5(hres == parse_tests[i].path_hres, "[%d] path failed: %08x, expected %08x\n",
                i, hres, parse_tests[i].path_hres);
        if(parse_tests[i].path) {
            FUNC5(size == FUNC2(parse_tests[i].path), "[%d] wrong size\n", i);
            FUNC5(!FUNC1(parse_tests[i].path, buf), "[%d] wrong path\n", i);
        }

        FUNC4(buf, 0xf0, sizeof(buf));
        hres = FUNC6(parse_tests[i].url, PARSE_SCHEMA, 0, buf,
                FUNC0(buf), &size, 0);
        FUNC5(hres == S_OK, "[%d] schema failed: %08x\n", i, hres);
        FUNC5(size == FUNC2(parse_tests[i].schema), "[%d] wrong size\n", i);
        FUNC5(!FUNC1(parse_tests[i].schema, buf), "[%d] wrong schema\n", i);

        if(FUNC3(parse_tests[i].url, wszRes, 3*sizeof(WCHAR))
                && FUNC3(parse_tests[i].url, wszAbout, 5*sizeof(WCHAR))) {
            FUNC4(buf, 0xf0, sizeof(buf));
            hres = FUNC6(parse_tests[i].url, PARSE_DOMAIN, 0, buf,
                    FUNC0(buf), &size, 0);
            FUNC5(hres == parse_tests[i].domain_hres, "[%d] domain failed: %08x\n", i, hres);
            if(parse_tests[i].domain)
                FUNC5(!FUNC1(parse_tests[i].domain, buf), "[%d] wrong domain, received %s\n", i, FUNC7(buf));
        }

        FUNC4(buf, 0xf0, sizeof(buf));
        hres = FUNC6(parse_tests[i].url, PARSE_ROOTDOCUMENT, 0, buf,
                FUNC0(buf), &size, 0);
        FUNC5(hres == parse_tests[i].rootdocument_hres, "[%d] rootdocument failed: %08x\n", i, hres);
        if(parse_tests[i].rootdocument)
            FUNC5(!FUNC1(parse_tests[i].rootdocument, buf), "[%d] wrong rootdocument, received %s\n", i, FUNC7(buf));
    }
}