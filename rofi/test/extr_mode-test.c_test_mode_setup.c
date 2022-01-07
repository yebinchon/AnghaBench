
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int ck_assert_int_eq (int ,int ) ;
 int help_keys_mode ;
 int mode_init (int *) ;

__attribute__((used)) static void test_mode_setup ( void )
{
    ck_assert_int_eq ( mode_init ( &help_keys_mode ), TRUE);
}
