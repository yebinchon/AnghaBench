#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vout_window_t ;
struct output_list {int /*<<< orphan*/  outputs; int /*<<< orphan*/ * owner; } ;

/* Variables and functions */
 struct output_list* FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct output_list *FUNC3(vout_window_t *wnd)
{
    struct output_list *ol = FUNC0(sizeof (*ol));
    if (FUNC1(ol == NULL))
        return NULL;

    ol->owner = wnd;
    FUNC2(&ol->outputs);
    return ol;
}