
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GString ;


 int g_list_append (int ,int *) ;
 int list_of_error_msgs ;

void rofi_add_error_message ( GString *str )
{
    list_of_error_msgs = g_list_append ( list_of_error_msgs, str );
}
