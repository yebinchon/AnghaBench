
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_decode_msg_get_param () ;
 int test_decode_msg_update () ;

__attribute__((used)) static void test_decode_msg(void)
{
    test_decode_msg_update();
    test_decode_msg_get_param();
}
