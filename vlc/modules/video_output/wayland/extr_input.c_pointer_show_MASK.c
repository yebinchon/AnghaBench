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
struct wl_surface {int dummy; } ;
struct wl_pointer {int dummy; } ;
struct seat_data {scalar_t__ cursor_timeout; scalar_t__ cursor_deadline; int /*<<< orphan*/  cursor_serial; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 struct wl_surface* FUNC1 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct wl_pointer*,int /*<<< orphan*/ ,struct wl_surface*,int,int) ; 

__attribute__((used)) static void FUNC3(struct seat_data *sd, struct wl_pointer *pointer)
{
    int hsx, hsy;
    struct wl_surface *surface = FUNC1(sd->owner, &hsx, &hsy);

    if (surface != NULL)
    {
        FUNC2(pointer, sd->cursor_serial, surface, hsx, hsy);
        sd->cursor_deadline = FUNC0() + sd->cursor_timeout;
    }
}