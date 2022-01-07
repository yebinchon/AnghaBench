
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_enveloped_msg_encoding () ;
 int test_enveloped_msg_open () ;
 int test_enveloped_msg_update () ;

__attribute__((used)) static void test_enveloped_msg(void)
{
    test_enveloped_msg_open();
    test_enveloped_msg_update();
    test_enveloped_msg_encoding();
}
