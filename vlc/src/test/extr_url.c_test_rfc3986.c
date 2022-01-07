
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test (int ,char const*,char const*) ;
 int vlc_uri_resolve_rfc3986_test ;

__attribute__((used)) static void test_rfc3986(const char *reference, const char *expected)
{
    test(vlc_uri_resolve_rfc3986_test, reference, expected);
}
