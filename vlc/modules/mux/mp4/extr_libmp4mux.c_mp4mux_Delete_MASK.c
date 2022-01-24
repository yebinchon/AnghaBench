#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  extra; } ;
struct TYPE_9__ {TYPE_1__ brands; int /*<<< orphan*/  tracks; } ;
typedef  TYPE_2__ mp4mux_trackinfo_t ;
typedef  TYPE_2__ mp4mux_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ *,size_t) ; 

void FUNC6(mp4mux_handle_t *h)
{
    for(size_t i=0; i<FUNC4(&h->tracks); i++)
    {
        mp4mux_trackinfo_t *t = FUNC5(&h->tracks, i);
        FUNC2(t);
        FUNC1(t);
    }
    FUNC3(&h->tracks);
    FUNC0(h->brands.extra);
    FUNC1(h);
}