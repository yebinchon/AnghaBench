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
struct TYPE_5__ {scalar_t__ i_minor; scalar_t__ i_major; int /*<<< orphan*/  extra; } ;
struct TYPE_6__ {int options; TYPE_1__ brands; int /*<<< orphan*/  tracks; } ;
typedef  TYPE_2__ mp4mux_handle_t ;
typedef  enum mp4mux_options { ____Placeholder_mp4mux_options } mp4mux_options ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

mp4mux_handle_t * FUNC3(enum mp4mux_options options)
{
    mp4mux_handle_t *h = FUNC1(sizeof(*h));
    FUNC2(&h->tracks);
    FUNC0(h->brands.extra);
    h->brands.i_major = 0;
    h->brands.i_minor = 0;
    h->options = options;
    return h;
}