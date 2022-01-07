
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xcb_window_t ;
typedef int xcb_atom_t ;
struct TYPE_2__ {int connection; } ;


 int XCB_ATOM_ATOM ;
 int XCB_PROP_MODE_REPLACE ;
 TYPE_1__* xcb ;
 int xcb_change_property (int ,int ,int ,int ,int ,int,int,int *) ;

void window_set_atom_prop ( xcb_window_t w, xcb_atom_t prop, xcb_atom_t *atoms, int count )
{
    xcb_change_property ( xcb->connection, XCB_PROP_MODE_REPLACE, w, prop, XCB_ATOM_ATOM, 32, count, atoms );
}
