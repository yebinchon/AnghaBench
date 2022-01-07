
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_block () ;
 int test_block_File (int) ;

int main (void)
{
    test_block_File(0);
    test_block_File(1);
    test_block ();
    return 0;
}
