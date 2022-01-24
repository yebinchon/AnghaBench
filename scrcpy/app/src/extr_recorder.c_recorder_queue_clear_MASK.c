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
struct recorder_queue {int dummy; } ;
struct record_packet {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC0 (struct recorder_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct recorder_queue*,int /*<<< orphan*/ ,struct record_packet**) ; 
 int /*<<< orphan*/  FUNC2 (struct record_packet*) ; 

__attribute__((used)) static void
FUNC3(struct recorder_queue *queue) {
    while (!FUNC0(queue)) {
        struct record_packet *rec;
        FUNC1(queue, next, &rec);
        FUNC2(rec);
    }
}