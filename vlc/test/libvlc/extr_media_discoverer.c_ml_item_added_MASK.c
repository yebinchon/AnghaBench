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
struct libvlc_event_t {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct libvlc_event_t const*,char*) ; 

__attribute__((used)) static void
FUNC1(const struct libvlc_event_t *p_ev, void *p_data)
{
    (void) p_data;
    FUNC0(p_ev, "added");
}