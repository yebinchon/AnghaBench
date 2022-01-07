
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int help_keys_mode ;
 int mode_destroy (int *) ;

__attribute__((used)) static void test_mode_teardown (void )
{
    mode_destroy ( &help_keys_mode );
}
