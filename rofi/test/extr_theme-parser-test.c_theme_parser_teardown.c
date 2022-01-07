
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ck_assert_int_eq (int ,int ) ;
 int ck_assert_ptr_null (int ) ;
 int error ;
 int error_msg ;
 int * rofi_theme ;
 int rofi_theme_free (int *) ;

__attribute__((used)) static void theme_parser_teardown ( void )
{
    ck_assert_ptr_null ( error_msg );
    ck_assert_int_eq ( error, 0);
    rofi_theme_free ( rofi_theme );
    rofi_theme = ((void*)0);

}
