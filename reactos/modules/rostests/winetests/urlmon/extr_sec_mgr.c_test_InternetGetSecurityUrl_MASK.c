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
typedef  char WCHAR ;
typedef  size_t HRESULT ;
typedef  size_t DWORD ;

/* Variables and functions */
 size_t FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  PSU_DEFAULT ; 
 int /*<<< orphan*/  PSU_SECURITY_URL_ONLY ; 
 int /*<<< orphan*/  ParseUrl_SECURITY_DOMAIN_expected ; 
 int /*<<< orphan*/  ParseUrl_SECURITY_URL_expected ; 
 int /*<<< orphan*/  ParseUrl_SECURITY_URL_input2 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,size_t,...) ; 
 size_t FUNC6 (char const*,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* security_expectedW ; 
 char const* security_url2W ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char const* url10 ; 
 char const* url2 ; 
 char const* url3 ; 
 char const* url4 ; 
 char const* url5 ; 
 char const* url7 ; 
 char const* url8 ; 
 char const* url9 ; 
 size_t FUNC9 (char const*) ; 

__attribute__((used)) static void FUNC10(void)
{
    const WCHAR url5_out[] = {'h','t','t','p',':','w','w','w','.','z','o','n','e','3',
                              '.','w','i','n','e','t','e','s','t',0};
    const WCHAR url7_out[] = {'f','t','p',':','z','o','n','e','3','.','w','i','n','e','t','e','s','t',0};

    const WCHAR *in[] = {url2, url3, url4, url5, url7, url8, url9, url10};
    const WCHAR *out_default[] = {url2, url3, url4, url5_out, url7_out, url8, url5_out, url10};
    const WCHAR *out_securl[] = {url2, url3, url4, url5, url7, url8, url9, url10};

    WCHAR *sec;
    DWORD i;
    HRESULT hres;

    FUNC8("testing CoInternetGetSecurityUrl...\n");

    for(i = 0; i < FUNC0(in); i++) {
        hres = FUNC6(in[i], &sec, PSU_DEFAULT, 0);
        FUNC5(hres == S_OK, "(%d) CoInternetGetSecurityUrl returned: %08x\n", i, hres);
        if(hres == S_OK) {
            FUNC5(!FUNC7(sec, out_default[i]), "(%d) Got %s, expected %s\n",
                    i, FUNC9(sec), FUNC9(out_default[i]));
            FUNC2(sec);
        }

        hres = FUNC6(in[i], &sec, PSU_SECURITY_URL_ONLY, 0);
        FUNC5(hres == S_OK, "(%d) CoInternetGetSecurityUrl returned: %08x\n", i, hres);
        if(hres == S_OK) {
            FUNC5(!FUNC7(sec, out_securl[i]), "(%d) Got %s, expected %s\n",
                    i, FUNC9(sec), FUNC9(out_securl[i]));
            FUNC2(sec);
        }
    }

    FUNC3(ParseUrl_SECURITY_URL_input2);
    FUNC3(ParseUrl_SECURITY_URL_expected);
    FUNC3(ParseUrl_SECURITY_DOMAIN_expected);

    hres = FUNC6(security_url2W, &sec, PSU_DEFAULT, 0);
    FUNC5(hres == S_OK, "CoInternetGetSecurityUrl returned 0x%08x, expected S_OK\n", hres);

    FUNC1(ParseUrl_SECURITY_URL_input2);
    FUNC1(ParseUrl_SECURITY_URL_expected);
    FUNC1(ParseUrl_SECURITY_DOMAIN_expected);

    FUNC5(!FUNC4(security_expectedW, sec), "Expected %s but got %s\n",
       FUNC9(security_expectedW), FUNC9(sec));
    FUNC2(sec);
}