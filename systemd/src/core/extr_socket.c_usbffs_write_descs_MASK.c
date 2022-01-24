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
struct TYPE_3__ {int /*<<< orphan*/  usb_function_strings; int /*<<< orphan*/  usb_function_descriptors; } ;
typedef  TYPE_1__ Service ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(int fd, Service *s) {
        int r;

        if (!s->usb_function_descriptors || !s->usb_function_strings)
                return -EINVAL;

        r = FUNC0(s->usb_function_descriptors, fd, 0);
        if (r < 0)
                return r;

        return FUNC0(s->usb_function_strings, fd, 0);
}