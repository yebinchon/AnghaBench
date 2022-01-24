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
struct TYPE_3__ {scalar_t__ i_edits_count; int /*<<< orphan*/ * p_edits; } ;
typedef  TYPE_1__ mp4mux_trackinfo_t ;
typedef  int /*<<< orphan*/  mp4mux_edit_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__,int) ; 

bool FUNC2(mp4mux_trackinfo_t *t, const mp4mux_edit_t *p_newedit)
{
    if(t->i_edits_count + 1 < t->i_edits_count)
        return false;
    mp4mux_edit_t *p_realloc = FUNC1( t->p_edits,
                                                 t->i_edits_count + 1,
                                                 sizeof(*p_realloc) );
    if(FUNC0(!p_realloc))
        return false;

    t->p_edits = p_realloc;
    t->p_edits[t->i_edits_count++] = *p_newedit;

    return true;
}