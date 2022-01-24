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
struct wl_buffer {int dummy; } ;
struct buffer_data {int /*<<< orphan*/ * counter; int /*<<< orphan*/  picture; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wl_buffer*) ; 

__attribute__((used)) static void FUNC3(void *data, struct wl_buffer *buffer)
{
    struct buffer_data *d = data;

    FUNC1(d->picture);
    (*(d->counter))--;
    FUNC0(d);
    FUNC2(buffer);
}