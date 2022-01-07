
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_derivation () ;
 int test_keystream () ;

__attribute__((used)) static void srtp_test (void)
{
    test_derivation ();
    test_keystream ();
}
