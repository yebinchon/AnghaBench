#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_mutex_t ;
struct TYPE_4__ {int ref_count; int /*<<< orphan*/  p_libvlc_int; int /*<<< orphan*/  instance_lock; } ;
typedef  TYPE_1__ libvlc_instance_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9( libvlc_instance_t *p_instance )
{
    vlc_mutex_t *lock = &p_instance->instance_lock;
    int refs;

    FUNC7( lock );
    FUNC0( p_instance->ref_count > 0 );
    refs = --p_instance->ref_count;
    FUNC8( lock );

    if( refs == 0 )
    {
        FUNC6( lock );
        FUNC4( p_instance->p_libvlc_int );
        FUNC2( p_instance->p_libvlc_int );
        FUNC3( p_instance->p_libvlc_int );
        FUNC1( p_instance );
        FUNC5 ();
    }
}