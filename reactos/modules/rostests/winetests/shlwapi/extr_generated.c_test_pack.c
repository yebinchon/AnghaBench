
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_pack_ASSOCF () ;
 int test_pack_DLLGETVERSIONPROC () ;
 int test_pack_DLLVERSIONINFO () ;
 int test_pack_DLLVERSIONINFO2 () ;
 int test_pack_HUSKEY () ;
 int test_pack_PHUSKEY () ;

__attribute__((used)) static void test_pack(void)
{
    test_pack_ASSOCF();
    test_pack_DLLGETVERSIONPROC();
    test_pack_DLLVERSIONINFO();
    test_pack_DLLVERSIONINFO2();
    test_pack_HUSKEY();
    test_pack_PHUSKEY();
}
