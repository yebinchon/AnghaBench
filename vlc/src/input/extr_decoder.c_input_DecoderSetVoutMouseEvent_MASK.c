#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_mouse_event ;
struct decoder_owner {int /*<<< orphan*/  mouse_lock; void* mouse_opaque; int /*<<< orphan*/  mouse_event; } ;
struct TYPE_5__ {scalar_t__ i_cat; } ;
struct TYPE_6__ {TYPE_1__ fmt_in; } ;
typedef  TYPE_2__ decoder_t ;

/* Variables and functions */
 scalar_t__ VIDEO_ES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct decoder_owner* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4( decoder_t *dec, vlc_mouse_event mouse_event,
                                    void *user_data )
{
    struct decoder_owner *owner = FUNC1( dec );
    FUNC0( dec->fmt_in.i_cat == VIDEO_ES );

    FUNC2( &owner->mouse_lock );

    owner->mouse_event = mouse_event;
    owner->mouse_opaque = user_data;

    FUNC3( &owner->mouse_lock );
}