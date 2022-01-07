
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int connection; } ;


 int XCB_CURRENT_TIME ;
 TYPE_1__* xcb ;
 int xcb_ungrab_pointer (int ,int ) ;

__attribute__((used)) static void release_pointer ( void )
{
    xcb_ungrab_pointer ( xcb->connection, XCB_CURRENT_TIME );
}
