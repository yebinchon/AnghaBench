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
struct udev_ctrl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDEV_CTRL_SET_ENV ; 
 int FUNC0 (struct udev_ctrl*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static inline int FUNC1(struct udev_ctrl *uctrl, const char *key) {
        return FUNC0(uctrl, UDEV_CTRL_SET_ENV, 0, key);
}