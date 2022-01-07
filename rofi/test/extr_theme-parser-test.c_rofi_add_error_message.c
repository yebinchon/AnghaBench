
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GString ;


 int TRUE ;
 int ck_assert_ptr_null (int *) ;
 int error ;
 int * error_msg ;

void rofi_add_error_message ( GString *msg )
{
    ck_assert_ptr_null ( error_msg );
    error_msg = msg;
    error = TRUE;
}
