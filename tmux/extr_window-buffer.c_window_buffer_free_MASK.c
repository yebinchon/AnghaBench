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
typedef  size_t u_int ;
struct window_mode_entry {struct window_buffer_modedata* data; } ;
struct window_buffer_modedata {size_t item_size; struct window_buffer_modedata* command; struct window_buffer_modedata* format; struct window_buffer_modedata* item_list; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct window_buffer_modedata*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct window_buffer_modedata) ; 

__attribute__((used)) static void
FUNC3(struct window_mode_entry *wme)
{
	struct window_buffer_modedata	*data = wme->data;
	u_int				 i;

	if (data == NULL)
		return;

	FUNC1(data->data);

	for (i = 0; i < data->item_size; i++)
		FUNC2(data->item_list[i]);
	FUNC0(data->item_list);

	FUNC0(data->format);
	FUNC0(data->command);

	FUNC0(data);
}