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
struct window_mode_entry {struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {int /*<<< orphan*/  cursordrag; scalar_t__ sely; scalar_t__ endsely; int /*<<< orphan*/  selx; int /*<<< orphan*/  endselx; scalar_t__ oy; scalar_t__ cy; int /*<<< orphan*/  backing; int /*<<< orphan*/  cx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURSORDRAG_ENDSEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct window_mode_entry*,int) ; 

__attribute__((used)) static void
FUNC2(struct window_mode_entry *wme)
{
	struct window_copy_mode_data	*data = wme->data;

	data->selx = data->cx;
	data->sely = FUNC0(data->backing) + data->cy - data->oy;

	data->endselx = data->selx;
	data->endsely = data->sely;

	data->cursordrag = CURSORDRAG_ENDSEL;

	FUNC1(wme, 1);
}