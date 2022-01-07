
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_allocateLuid () ;
 int test_lookupPrivilegeName () ;
 int test_lookupPrivilegeValue () ;

__attribute__((used)) static void test_luid(void)
{
    test_allocateLuid();
    test_lookupPrivilegeName();
    test_lookupPrivilegeValue();
}
