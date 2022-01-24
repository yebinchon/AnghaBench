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
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PARSE_CANONICALIZE ; 
 int /*<<< orphan*/  ParseUrl ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int URL_ESCAPE_UNSAFE ; 
 int URL_UNESCAPE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  parse_action ; 
 int parse_flags ; 
 int /*<<< orphan*/ * parse_resultW ; 
 int /*<<< orphan*/  parse_urlW ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(void) {
    HRESULT hr;
    IUri *uri = NULL;

    hr = FUNC8(parse_urlW, 0, 0, &uri);
    FUNC6(FUNC3(hr), "Error: Expected CreateUri to succeed, but got 0x%08x.\n", hr);
    if(FUNC3(hr)) {
        WCHAR result[200];
        DWORD result_len;

        FUNC2(ParseUrl);

        parse_action = PARSE_CANONICALIZE;
        parse_flags = URL_UNESCAPE|URL_ESCAPE_UNSAFE;

        hr = FUNC7(uri, parse_action, parse_flags, result, 200, &result_len, 0);
        FUNC6(hr == S_OK, "Error: CoInternetParseIUri returned 0x%08x, expected 0x%08x.\n", hr, S_OK);

        FUNC0(ParseUrl);

        if(FUNC3(hr)) {
            FUNC6(result_len == FUNC5(parse_resultW), "Error: Expected %d, but got %d.\n",
                FUNC5(parse_resultW), result_len);
            FUNC6(!FUNC4(result, parse_resultW), "Error: Expected %s, but got %s.\n",
                FUNC9(parse_resultW), FUNC9(result));
        }
    }
    if(uri) FUNC1(uri);
}