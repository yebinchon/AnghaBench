
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* url; char* expectret; char* expecturl; int flags; } ;
typedef char* HRESULT ;
typedef int DWORD ;
typedef char CHAR ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 char* E_INVALIDARG ;
 char* E_NOTIMPL ;
 char* E_POINTER ;
 int INTERNET_MAX_URL_LENGTH ;
 TYPE_1__* TEST_ESCAPE ;
 int URL_ESCAPE_AS_UTF8 ;
 int URL_ESCAPE_SPACES_ONLY ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 char* pUrlEscapeA (char*,char*,int*,int ) ;
 int strcmp (char*,char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_UrlEscapeA(void)
{
    DWORD size = 0;
    HRESULT ret;
    unsigned int i;
    char empty_string[] = "";

    if (!pUrlEscapeA) {
        win_skip("UrlEscapeA not found\n");
        return;
    }

    ret = pUrlEscapeA("/woningplan/woonkamer basis.swf", ((void*)0), &size, URL_ESCAPE_SPACES_ONLY);
    ok(ret == E_INVALIDARG, "got %x, expected %x\n", ret, E_INVALIDARG);
    ok(size == 0, "got %d, expected %d\n", size, 0);

    size = 0;
    ret = pUrlEscapeA("/woningplan/woonkamer basis.swf", empty_string, &size, URL_ESCAPE_SPACES_ONLY);
    ok(ret == E_INVALIDARG, "got %x, expected %x\n", ret, E_INVALIDARG);
    ok(size == 0, "got %d, expected %d\n", size, 0);

    size = 1;
    ret = pUrlEscapeA("/woningplan/woonkamer basis.swf", ((void*)0), &size, URL_ESCAPE_SPACES_ONLY);
    ok(ret == E_INVALIDARG, "got %x, expected %x\n", ret, E_INVALIDARG);
    ok(size == 1, "got %d, expected %d\n", size, 1);

    size = 1;
    ret = pUrlEscapeA("/woningplan/woonkamer basis.swf", empty_string, ((void*)0), URL_ESCAPE_SPACES_ONLY);
    ok(ret == E_INVALIDARG, "got %x, expected %x\n", ret, E_INVALIDARG);
    ok(size == 1, "got %d, expected %d\n", size, 1);

    size = 1;
    empty_string[0] = 127;
    ret = pUrlEscapeA("/woningplan/woonkamer basis.swf", empty_string, &size, URL_ESCAPE_SPACES_ONLY);
    ok(ret == E_POINTER, "got %x, expected %x\n", ret, E_POINTER);
    ok(size == 34, "got %d, expected %d\n", size, 34);
    ok(empty_string[0] == 127, "String has changed, empty_string[0] = %d\n", empty_string[0]);

    size = 1;
    empty_string[0] = 127;
    ret = pUrlEscapeA("/woningplan/woonkamer basis.swf", empty_string, &size, URL_ESCAPE_AS_UTF8);
    ok(ret == E_NOTIMPL || broken(ret == E_POINTER),
        "got %x, expected %x\n", ret, E_NOTIMPL);
    ok(size == 1 || broken(size == 34),
        "got %d, expected %d\n", size, 1);
    ok(empty_string[0] == 127, "String has changed, empty_string[0] = %d\n", empty_string[0]);

    for (i = 0; i < ARRAY_SIZE(TEST_ESCAPE); i++) {
        CHAR ret_url[INTERNET_MAX_URL_LENGTH];

        size = INTERNET_MAX_URL_LENGTH;
        ret = pUrlEscapeA(TEST_ESCAPE[i].url, ret_url, &size, TEST_ESCAPE[i].flags);
        ok(ret == TEST_ESCAPE[i].expectret, "UrlEscapeA returned 0x%08x instead of 0x%08x for \"%s\"\n",
            ret, TEST_ESCAPE[i].expectret, TEST_ESCAPE[i].url);
        ok(!strcmp(ret_url, TEST_ESCAPE[i].expecturl), "Expected \"%s\", but got \"%s\" for \"%s\"\n",
            TEST_ESCAPE[i].expecturl, ret_url, TEST_ESCAPE[i].url);
    }
}
