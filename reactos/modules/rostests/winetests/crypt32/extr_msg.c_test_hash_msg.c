
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_hash_msg_encoding () ;
 int test_hash_msg_get_param () ;
 int test_hash_msg_open () ;
 int test_hash_msg_update () ;

__attribute__((used)) static void test_hash_msg(void)
{
    test_hash_msg_open();
    test_hash_msg_update();
    test_hash_msg_get_param();
    test_hash_msg_encoding();
}
