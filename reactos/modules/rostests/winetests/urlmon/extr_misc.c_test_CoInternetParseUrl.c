
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int buf ;
struct TYPE_8__ {scalar_t__ secur_hres; scalar_t__ path_hres; scalar_t__ domain_hres; scalar_t__ rootdocument_hres; scalar_t__ rootdocument; int url; scalar_t__ domain; scalar_t__ schema; scalar_t__ path; scalar_t__ encoded_url; } ;
typedef TYPE_1__ WCHAR ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DWORD ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ E_POINTER ;
 int PARSE_DOMAIN ;
 int PARSE_ENCODE ;
 int PARSE_PATH_FROM_URL ;
 int PARSE_ROOTDOCUMENT ;
 int PARSE_SCHEMA ;
 int PARSE_SECURITY_URL ;
 scalar_t__ S_OK ;
 int lstrcmpW (scalar_t__,TYPE_1__*) ;
 scalar_t__ lstrlenW (scalar_t__) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int memset (TYPE_1__*,int,int) ;
 int ok (int,char*,int,...) ;
 scalar_t__ pCoInternetParseUrl (int ,int ,int ,TYPE_1__*,int,scalar_t__*,int ) ;
 TYPE_1__* parse_tests ;
 scalar_t__ wine_dbgstr_w (TYPE_1__*) ;
 int wszAbout ;
 int wszRes ;

__attribute__((used)) static void test_CoInternetParseUrl(void)
{
    HRESULT hres;
    DWORD size;
    int i;

    static WCHAR buf[4096];

    memset(buf, 0xf0, sizeof(buf));
    hres = pCoInternetParseUrl(parse_tests[0].url, PARSE_SCHEMA, 0, buf,
            3, &size, 0);
    ok(hres == E_POINTER, "schema failed: %08x, expected E_POINTER\n", hres);

    for(i = 0; i < ARRAY_SIZE(parse_tests); i++) {
        memset(buf, 0xf0, sizeof(buf));
        hres = pCoInternetParseUrl(parse_tests[i].url, PARSE_SECURITY_URL, 0, buf,
                ARRAY_SIZE(buf), &size, 0);
        ok(hres == parse_tests[i].secur_hres, "[%d] security url failed: %08x, expected %08x\n",
                i, hres, parse_tests[i].secur_hres);

        memset(buf, 0xf0, sizeof(buf));
        hres = pCoInternetParseUrl(parse_tests[i].url, PARSE_ENCODE, 0, buf,
                ARRAY_SIZE(buf), &size, 0);
        ok(hres == S_OK, "[%d] encoding failed: %08x\n", i, hres);
        ok(size == lstrlenW(parse_tests[i].encoded_url), "[%d] wrong size\n", i);
        ok(!lstrcmpW(parse_tests[i].encoded_url, buf), "[%d] wrong encoded url\n", i);

        memset(buf, 0xf0, sizeof(buf));
        hres = pCoInternetParseUrl(parse_tests[i].url, PARSE_PATH_FROM_URL, 0, buf,
                ARRAY_SIZE(buf), &size, 0);
        ok(hres == parse_tests[i].path_hres, "[%d] path failed: %08x, expected %08x\n",
                i, hres, parse_tests[i].path_hres);
        if(parse_tests[i].path) {
            ok(size == lstrlenW(parse_tests[i].path), "[%d] wrong size\n", i);
            ok(!lstrcmpW(parse_tests[i].path, buf), "[%d] wrong path\n", i);
        }

        memset(buf, 0xf0, sizeof(buf));
        hres = pCoInternetParseUrl(parse_tests[i].url, PARSE_SCHEMA, 0, buf,
                ARRAY_SIZE(buf), &size, 0);
        ok(hres == S_OK, "[%d] schema failed: %08x\n", i, hres);
        ok(size == lstrlenW(parse_tests[i].schema), "[%d] wrong size\n", i);
        ok(!lstrcmpW(parse_tests[i].schema, buf), "[%d] wrong schema\n", i);

        if(memcmp(parse_tests[i].url, wszRes, 3*sizeof(WCHAR))
                && memcmp(parse_tests[i].url, wszAbout, 5*sizeof(WCHAR))) {
            memset(buf, 0xf0, sizeof(buf));
            hres = pCoInternetParseUrl(parse_tests[i].url, PARSE_DOMAIN, 0, buf,
                    ARRAY_SIZE(buf), &size, 0);
            ok(hres == parse_tests[i].domain_hres, "[%d] domain failed: %08x\n", i, hres);
            if(parse_tests[i].domain)
                ok(!lstrcmpW(parse_tests[i].domain, buf), "[%d] wrong domain, received %s\n", i, wine_dbgstr_w(buf));
        }

        memset(buf, 0xf0, sizeof(buf));
        hres = pCoInternetParseUrl(parse_tests[i].url, PARSE_ROOTDOCUMENT, 0, buf,
                ARRAY_SIZE(buf), &size, 0);
        ok(hres == parse_tests[i].rootdocument_hres, "[%d] rootdocument failed: %08x\n", i, hres);
        if(parse_tests[i].rootdocument)
            ok(!lstrcmpW(parse_tests[i].rootdocument, buf), "[%d] wrong rootdocument, received %s\n", i, wine_dbgstr_w(buf));
    }
}
