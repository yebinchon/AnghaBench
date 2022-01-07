
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int connection; } ;


 int release_keyboard () ;
 int release_pointer () ;
 TYPE_1__* xcb ;
 int xcb_flush (int ) ;

void display_early_cleanup ( void )
{
    release_keyboard ( );
    release_pointer ( );
    xcb_flush ( xcb->connection );
}
