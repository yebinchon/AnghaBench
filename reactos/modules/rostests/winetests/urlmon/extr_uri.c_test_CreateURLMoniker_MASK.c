#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  uri_url; int /*<<< orphan*/  no_canon_url; int /*<<< orphan*/  uniform_url; int /*<<< orphan*/  legacy_url; int /*<<< orphan*/  uri_flags; int /*<<< orphan*/  base_uri_flags; int /*<<< orphan*/  base_url; int /*<<< orphan*/  url; } ;
typedef  TYPE_1__ create_urlmon_test_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IUri ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  URL_MK_LEGACY ; 
 int /*<<< orphan*/  URL_MK_NO_CANONICALIZE ; 
 int /*<<< orphan*/  URL_MK_UNIFORM ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ const* create_urlmon_tests ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(void)
{
    const create_urlmon_test_t *test;
    IMoniker *mon, *base_mon;
    WCHAR *url, *base_url;
    IUri *uri, *base_uri;
    HRESULT hres;

    for(test = create_urlmon_tests; test < create_urlmon_tests + FUNC0(create_urlmon_tests); test++) {
        url = FUNC4(test->url);
        base_url = FUNC4(test->base_url);

        if(base_url) {
            hres = FUNC9(base_url, test->base_uri_flags, 0, &base_uri);
            FUNC6(hres == S_OK, "CreateUri failed: %08x\n", hres);

            hres = FUNC8(NULL, base_uri, &base_mon, URL_MK_NO_CANONICALIZE);
            FUNC6(hres == S_OK, "CreateURLMonikerEx2 failed: %08x\n", hres);
        }else {
            base_uri = NULL;
            base_mon = NULL;
        }

        hres = FUNC1(base_mon, url, &mon);
        FUNC6(hres == S_OK, "CreateURLMoniker failed: %08x\n", hres);
        FUNC11(mon, test->legacy_url);
        FUNC10(mon, test->legacy_url);
        FUNC2(mon);

        hres = FUNC7(base_mon, url, &mon, URL_MK_LEGACY);
        FUNC6(hres == S_OK, "CreateURLMoniker failed: %08x\n", hres);
        FUNC11(mon, test->legacy_url);
        FUNC10(mon, test->legacy_url);
        FUNC2(mon);

        hres = FUNC7(base_mon, url, &mon, URL_MK_UNIFORM);
        FUNC6(hres == S_OK, "CreateURLMoniker failed: %08x\n", hres);
        FUNC11(mon, test->uniform_url);
        FUNC10(mon, test->uniform_url);
        FUNC2(mon);

        hres = FUNC7(base_mon, url, &mon, URL_MK_NO_CANONICALIZE);
        FUNC6(hres == S_OK, "CreateURLMoniker failed: %08x\n", hres);
        FUNC11(mon, test->no_canon_url);
        FUNC10(mon, test->no_canon_url);
        FUNC2(mon);

        hres = FUNC9(url, test->uri_flags, 0, &uri);
        FUNC6(hres == S_OK, "CreateUri failed: %08x\n", hres);

        hres = FUNC8(base_mon, uri, &mon, URL_MK_LEGACY);
        FUNC6(hres == S_OK, "CreateURLMonikerEx2 failed: %08x\n", hres);
        FUNC11(mon, base_url ? test->legacy_url : test->uri_url);
        FUNC10(mon, base_url ? test->legacy_url : test->uri_url);
        FUNC2(mon);

        hres = FUNC8(base_mon, uri, &mon, URL_MK_UNIFORM);
        FUNC6(hres == S_OK, "CreateURLMonikerEx2 failed: %08x\n", hres);
        FUNC11(mon, base_url ? test->uniform_url : test->uri_url);
        FUNC10(mon, base_url ? test->uniform_url : test->uri_url);
        FUNC2(mon);

        hres = FUNC8(base_mon, uri, &mon, URL_MK_NO_CANONICALIZE);
        FUNC6(hres == S_OK, "CreateURLMonikerEx2 failed: %08x\n", hres);
        FUNC11(mon, base_url ? test->no_canon_url : test->uri_url);
        FUNC10(mon, base_url ? test->no_canon_url : test->uri_url);
        FUNC2(mon);

        FUNC3(uri);
        FUNC5(url);
        FUNC5(base_url);
        if(base_uri)
            FUNC3(base_uri);
        if(base_mon)
            FUNC2(base_mon);
    }
}