
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int AF_INET6 ;
 int AF_LOCAL ;
 int AF_UNSPEC ;
 int puts (char*) ;
 int test_gethostbyname2_r (void*,char const*,char const*,int ) ;
 int test_gethostbyname3_r (void*,char const*,char const*,int ) ;
 int test_gethostbyname4_r (void*,char const*,char const*) ;
 int test_gethostbyname_r (void*,char const*,char const*) ;

__attribute__((used)) static void test_byname(void *handle, const char *module, const char *name) {
        test_gethostbyname4_r(handle, module, name);
        puts("");

        test_gethostbyname3_r(handle, module, name, AF_INET);
        puts("");
        test_gethostbyname3_r(handle, module, name, AF_INET6);
        puts("");
        test_gethostbyname3_r(handle, module, name, AF_UNSPEC);
        puts("");
        test_gethostbyname3_r(handle, module, name, AF_LOCAL);
        puts("");

        test_gethostbyname2_r(handle, module, name, AF_INET);
        puts("");
        test_gethostbyname2_r(handle, module, name, AF_INET6);
        puts("");
        test_gethostbyname2_r(handle, module, name, AF_UNSPEC);
        puts("");
        test_gethostbyname2_r(handle, module, name, AF_LOCAL);
        puts("");

        test_gethostbyname_r(handle, module, name);
        puts("");
}
