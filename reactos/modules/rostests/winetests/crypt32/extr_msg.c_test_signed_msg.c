
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_signed_msg_encoding () ;
 int test_signed_msg_get_param () ;
 int test_signed_msg_open () ;
 int test_signed_msg_update () ;

__attribute__((used)) static void test_signed_msg(void)
{
    test_signed_msg_open();
    test_signed_msg_update();
    test_signed_msg_encoding();
    test_signed_msg_get_param();
}
