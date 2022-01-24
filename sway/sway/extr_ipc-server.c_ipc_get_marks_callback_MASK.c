#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sway_container {TYPE_1__* marks; } ;
typedef  int /*<<< orphan*/  json_object ;
struct TYPE_2__ {int length; scalar_t__* items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct sway_container *con, void *data) {
	json_object *marks = (json_object *)data;
	for (int i = 0; i < con->marks->length; ++i) {
		char *mark = (char *)con->marks->items[i];
		FUNC0(marks, FUNC1(mark));
	}
}