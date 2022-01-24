#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  libarchive_t ;
struct TYPE_4__ {int /*<<< orphan*/ * p_source; TYPE_1__* p_sys; } ;
typedef  TYPE_2__ libarchive_callback_t ;
struct TYPE_3__ {int /*<<< orphan*/  b_dead; int /*<<< orphan*/ * source; } ;

/* Variables and functions */
 int ARCHIVE_FATAL ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3( libarchive_t* p_arc, void* p_obj )
{
    FUNC0( p_arc );

    libarchive_callback_t* p_cb = (libarchive_callback_t*)p_obj;

    if( p_cb->p_sys->source == p_cb->p_source )
    {  /* DO NOT CLOSE OUR MOTHER STREAM */
        if( !p_cb->p_sys->b_dead && FUNC2( p_cb->p_source, 0 ) )
            return ARCHIVE_FATAL;
    }
    else if( p_cb->p_source )
    {
        FUNC1( p_cb->p_source );
        p_cb->p_source = NULL;
    }

    return ARCHIVE_OK;
}