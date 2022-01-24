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
struct write_queue_item {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct write_queue_item* FUNC1 (struct write_queue_item*) ; 

__attribute__((used)) static struct write_queue_item* FUNC2(struct write_queue_item *item) {
        if (!item)
                return NULL;

        FUNC0(item->file);
        return FUNC1(item);
}