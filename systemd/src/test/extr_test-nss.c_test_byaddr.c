
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;


 int puts (char*) ;
 int test_gethostbyaddr2_r (void*,char const*,void const*,int ,int) ;
 int test_gethostbyaddr_r (void*,char const*,void const*,int ,int) ;

__attribute__((used)) static void test_byaddr(void *handle,
                        const char *module,
                        const void* addr, socklen_t len,
                        int af) {
        test_gethostbyaddr2_r(handle, module, addr, len, af);
        puts("");

        test_gethostbyaddr_r(handle, module, addr, len, af);
        puts("");
}
