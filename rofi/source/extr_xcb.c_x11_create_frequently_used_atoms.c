
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int atom; } ;
typedef TYPE_1__ xcb_intern_atom_reply_t ;
typedef int xcb_intern_atom_cookie_t ;
struct TYPE_6__ {int connection; } ;


 int NUM_NETATOMS ;
 int free (TYPE_1__*) ;
 int * netatom_names ;
 int * netatoms ;
 int strlen (int ) ;
 TYPE_3__* xcb ;
 int xcb_intern_atom (int ,int ,int ,int ) ;
 TYPE_1__* xcb_intern_atom_reply (int ,int ,int *) ;

__attribute__((used)) static void x11_create_frequently_used_atoms ( void )
{

    for ( int i = 0; i < NUM_NETATOMS; i++ ) {
        xcb_intern_atom_cookie_t cc = xcb_intern_atom ( xcb->connection, 0, strlen ( netatom_names[i] ), netatom_names[i] );
        xcb_intern_atom_reply_t *r = xcb_intern_atom_reply ( xcb->connection, cc, ((void*)0) );
        if ( r ) {
            netatoms[i] = r->atom;
            free ( r );
        }
    }
}
