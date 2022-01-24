#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ libvlc_event_type_t ;
struct TYPE_6__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  listeners; } ;
typedef  TYPE_1__ libvlc_event_manager_t ;
struct TYPE_7__ {scalar_t__ event_type; scalar_t__ pf_callback; void* p_user_data; } ;
typedef  TYPE_2__ libvlc_event_listener_t ;
typedef  scalar_t__ libvlc_callback_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(libvlc_event_manager_t *em, libvlc_event_type_t type,
                         libvlc_callback_t callback, void *opaque)
{
    FUNC5(&em->lock);
    for (size_t i = 0; i < FUNC2(&em->listeners); i++)
    {
         libvlc_event_listener_t *listener;

         listener = FUNC3(&em->listeners, i);

         if (listener->event_type == type
          && listener->pf_callback == callback
          && listener->p_user_data == opaque)
         {   /* that's our listener */
             FUNC4(&em->listeners, i);
             FUNC6(&em->lock);
             FUNC1(listener);
             return;
         }
    }
    FUNC0();
}