
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * available_modi ;
 int mode_set_config (int ) ;
 unsigned int num_available_modi ;

__attribute__((used)) static void rofi_collect_modi_setup ( void )
{
    for ( unsigned int i = 0; i < num_available_modi; i++ ) {
        mode_set_config ( available_modi[i] );
    }
}
