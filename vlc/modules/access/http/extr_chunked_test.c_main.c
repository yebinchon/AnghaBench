
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_bad (char*) ;
 int test_empty () ;
 int test_good () ;

int main(void)
{
    test_good();
    test_empty();
    test_bad("");
    test_bad("A\r\n" "123456789");
    test_bad("Z\r\n" "123456789");

    return 0;
}
