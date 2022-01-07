
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_data_msg_encoding () ;
 int test_data_msg_get_param () ;
 int test_data_msg_open () ;
 int test_data_msg_update () ;

__attribute__((used)) static void test_data_msg(void)
{
    test_data_msg_open();
    test_data_msg_update();
    test_data_msg_get_param();
    test_data_msg_encoding();
}
