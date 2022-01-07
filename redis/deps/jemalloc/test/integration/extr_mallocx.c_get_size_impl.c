
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert_d_eq (int ,int ,char*,char const*,...) ;
 int mallctlbymib (size_t*,size_t,void*,size_t*,int *,int ) ;
 int mallctlnametomib (char const*,size_t*,size_t*) ;

__attribute__((used)) static size_t
get_size_impl(const char *cmd, size_t ind) {
 size_t ret;
 size_t z;
 size_t mib[4];
 size_t miblen = 4;

 z = sizeof(size_t);
 assert_d_eq(mallctlnametomib(cmd, mib, &miblen),
     0, "Unexpected mallctlnametomib(\"%s\", ...) failure", cmd);
 mib[2] = ind;
 z = sizeof(size_t);
 assert_d_eq(mallctlbymib(mib, miblen, (void *)&ret, &z, ((void*)0), 0),
     0, "Unexpected mallctlbymib([\"%s\", %zu], ...) failure", cmd, ind);

 return ret;
}
