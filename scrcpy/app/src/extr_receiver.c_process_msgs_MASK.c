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
struct receiver {int dummy; } ;
struct device_msg {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned char const*,size_t,struct device_msg*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_msg*) ; 
 int /*<<< orphan*/  FUNC3 (struct receiver*,struct device_msg*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct receiver *receiver, const unsigned char *buf, size_t len) {
    size_t head = 0;
    for (;;) {
        struct device_msg msg;
        ssize_t r = FUNC1(&buf[head], len - head, &msg);
        if (r == -1) {
            return -1;
        }
        if (r == 0) {
            return head;
        }

        FUNC3(receiver, &msg);
        FUNC2(&msg);

        head += r;
        FUNC0(head <= len);
        if (head == len) {
            return head;
        }
    }
}