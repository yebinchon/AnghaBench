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
struct sway_container {int /*<<< orphan*/  view; } ;
struct surface_iterator_data {int /*<<< orphan*/  user_data; int /*<<< orphan*/  user_iterator; int /*<<< orphan*/  output; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct sway_container *con,
		void *_data) {
	if (!con->view || !FUNC1(con->view)) {
		return;
	}

	struct surface_iterator_data *data = _data;
	FUNC0(data->output, con->view,
		data->user_iterator, data->user_data);
}