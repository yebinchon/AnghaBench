#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int i_edits_count; int /*<<< orphan*/  const* p_edits; } ;
typedef  TYPE_1__ mp4mux_trackinfo_t ;
typedef  int /*<<< orphan*/  mp4mux_edit_t ;

/* Variables and functions */

const mp4mux_edit_t *FUNC0(const mp4mux_trackinfo_t *t)
{
    if(t->i_edits_count)
        return &t->p_edits[t->i_edits_count - 1];
    else return NULL;
}