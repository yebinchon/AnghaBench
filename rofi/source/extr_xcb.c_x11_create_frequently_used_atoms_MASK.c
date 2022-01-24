#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  atom; } ;
typedef  TYPE_1__ xcb_intern_atom_reply_t ;
typedef  int /*<<< orphan*/  xcb_intern_atom_cookie_t ;
struct TYPE_6__ {int /*<<< orphan*/  connection; } ;

/* Variables and functions */
 int NUM_NETATOMS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/ * netatom_names ; 
 int /*<<< orphan*/ * netatoms ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* xcb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4 ( void )
{
    // X atom values
    for ( int i = 0; i < NUM_NETATOMS; i++ ) {
        xcb_intern_atom_cookie_t cc = FUNC2 ( xcb->connection, 0, FUNC1 ( netatom_names[i] ), netatom_names[i] );
        xcb_intern_atom_reply_t  *r = FUNC3 ( xcb->connection, cc, NULL );
        if ( r ) {
            netatoms[i] = r->atom;
            FUNC0 ( r );
        }
    }
}