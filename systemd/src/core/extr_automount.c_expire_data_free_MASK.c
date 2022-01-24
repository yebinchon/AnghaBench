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
struct expire_data {int /*<<< orphan*/  ioctl_fd; int /*<<< orphan*/  dev_autofs_fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct expire_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct expire_data *data) {
        if (!data)
                return;

        FUNC1(data->dev_autofs_fd);
        FUNC1(data->ioctl_fd);
        FUNC0(data);
}