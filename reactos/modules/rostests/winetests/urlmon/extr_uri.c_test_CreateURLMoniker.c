
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int uri_url; int no_canon_url; int uniform_url; int legacy_url; int uri_flags; int base_uri_flags; int base_url; int url; } ;
typedef TYPE_1__ create_urlmon_test_t ;
typedef int WCHAR ;
typedef int IUri ;
typedef int IMoniker ;
typedef int HRESULT ;


 int ARRAY_SIZE (TYPE_1__ const*) ;
 int CreateURLMoniker (int *,int *,int **) ;
 int IMoniker_Release (int *) ;
 int IUri_Release (int *) ;
 int S_OK ;
 int URL_MK_LEGACY ;
 int URL_MK_NO_CANONICALIZE ;
 int URL_MK_UNIFORM ;
 int * a2w (int ) ;
 TYPE_1__ const* create_urlmon_tests ;
 int heap_free (int *) ;
 int ok (int,char*,int ) ;
 int pCreateURLMonikerEx (int *,int *,int **,int ) ;
 int pCreateURLMonikerEx2 (int *,int *,int **,int ) ;
 int pCreateUri (int *,int ,int ,int **) ;
 int test_display_uri (int *,int ) ;
 int test_urlmon_display_name (int *,int ) ;

__attribute__((used)) static void test_CreateURLMoniker(void)
{
    const create_urlmon_test_t *test;
    IMoniker *mon, *base_mon;
    WCHAR *url, *base_url;
    IUri *uri, *base_uri;
    HRESULT hres;

    for(test = create_urlmon_tests; test < create_urlmon_tests + ARRAY_SIZE(create_urlmon_tests); test++) {
        url = a2w(test->url);
        base_url = a2w(test->base_url);

        if(base_url) {
            hres = pCreateUri(base_url, test->base_uri_flags, 0, &base_uri);
            ok(hres == S_OK, "CreateUri failed: %08x\n", hres);

            hres = pCreateURLMonikerEx2(((void*)0), base_uri, &base_mon, URL_MK_NO_CANONICALIZE);
            ok(hres == S_OK, "CreateURLMonikerEx2 failed: %08x\n", hres);
        }else {
            base_uri = ((void*)0);
            base_mon = ((void*)0);
        }

        hres = CreateURLMoniker(base_mon, url, &mon);
        ok(hres == S_OK, "CreateURLMoniker failed: %08x\n", hres);
        test_urlmon_display_name(mon, test->legacy_url);
        test_display_uri(mon, test->legacy_url);
        IMoniker_Release(mon);

        hres = pCreateURLMonikerEx(base_mon, url, &mon, URL_MK_LEGACY);
        ok(hres == S_OK, "CreateURLMoniker failed: %08x\n", hres);
        test_urlmon_display_name(mon, test->legacy_url);
        test_display_uri(mon, test->legacy_url);
        IMoniker_Release(mon);

        hres = pCreateURLMonikerEx(base_mon, url, &mon, URL_MK_UNIFORM);
        ok(hres == S_OK, "CreateURLMoniker failed: %08x\n", hres);
        test_urlmon_display_name(mon, test->uniform_url);
        test_display_uri(mon, test->uniform_url);
        IMoniker_Release(mon);

        hres = pCreateURLMonikerEx(base_mon, url, &mon, URL_MK_NO_CANONICALIZE);
        ok(hres == S_OK, "CreateURLMoniker failed: %08x\n", hres);
        test_urlmon_display_name(mon, test->no_canon_url);
        test_display_uri(mon, test->no_canon_url);
        IMoniker_Release(mon);

        hres = pCreateUri(url, test->uri_flags, 0, &uri);
        ok(hres == S_OK, "CreateUri failed: %08x\n", hres);

        hres = pCreateURLMonikerEx2(base_mon, uri, &mon, URL_MK_LEGACY);
        ok(hres == S_OK, "CreateURLMonikerEx2 failed: %08x\n", hres);
        test_urlmon_display_name(mon, base_url ? test->legacy_url : test->uri_url);
        test_display_uri(mon, base_url ? test->legacy_url : test->uri_url);
        IMoniker_Release(mon);

        hres = pCreateURLMonikerEx2(base_mon, uri, &mon, URL_MK_UNIFORM);
        ok(hres == S_OK, "CreateURLMonikerEx2 failed: %08x\n", hres);
        test_urlmon_display_name(mon, base_url ? test->uniform_url : test->uri_url);
        test_display_uri(mon, base_url ? test->uniform_url : test->uri_url);
        IMoniker_Release(mon);

        hres = pCreateURLMonikerEx2(base_mon, uri, &mon, URL_MK_NO_CANONICALIZE);
        ok(hres == S_OK, "CreateURLMonikerEx2 failed: %08x\n", hres);
        test_urlmon_display_name(mon, base_url ? test->no_canon_url : test->uri_url);
        test_display_uri(mon, base_url ? test->no_canon_url : test->uri_url);
        IMoniker_Release(mon);

        IUri_Release(uri);
        heap_free(url);
        heap_free(base_url);
        if(base_uri)
            IUri_Release(base_uri);
        if(base_mon)
            IMoniker_Release(base_mon);
    }
}
