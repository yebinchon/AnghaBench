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
struct worker_message {int dummy; } ;
typedef  int /*<<< orphan*/  message ;

/* Variables and functions */
 int FUNC0 (int,struct worker_message*,int,int) ; 

__attribute__((used)) static int FUNC1(int fd) {
        struct worker_message message = {};

        return FUNC0(fd, &message, sizeof(message), false);
}