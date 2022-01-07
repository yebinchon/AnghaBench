
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expected; int flags; } ;
typedef int IUri ;
typedef scalar_t__ HRESULT ;
typedef size_t DWORD ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int http_urlW ;
 TYPE_1__* invalid_flag_tests ;
 int ok (int,char*,scalar_t__,...) ;
 scalar_t__ pCreateUriWithFragment (int ,int *,int ,int ,int **) ;

__attribute__((used)) static void test_CreateUriWithFragment_InvalidFlags(void) {
    DWORD i;

    for(i = 0; i < ARRAY_SIZE(invalid_flag_tests); ++i) {
        HRESULT hr;
        IUri *uri = (void*) 0xdeadbeef;

        hr = pCreateUriWithFragment(http_urlW, ((void*)0), invalid_flag_tests[i].flags, 0, &uri);
        ok(hr == invalid_flag_tests[i].expected, "Error: CreateUriWithFragment returned 0x%08x, expected 0x%08x. flags=0x%08x.\n",
            hr, invalid_flag_tests[i].expected, invalid_flag_tests[i].flags);
        ok(uri == ((void*)0), "Error: Expected uri to be NULL, but was %p instead.\n", uri);
    }
}
