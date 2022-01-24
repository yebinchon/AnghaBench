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
typedef  int /*<<< orphan*/  u_int ;
struct window_mode_entry {int /*<<< orphan*/  prefix; struct window_copy_mode_data* data; } ;
struct window_copy_mode_data {int jumptype; } ;
struct window_copy_cmd_state {struct window_mode_entry* wme; } ;
typedef  enum window_copy_cmd_action { ____Placeholder_window_copy_cmd_action } window_copy_cmd_action ;

/* Variables and functions */
 int WINDOW_COPY_CMD_NOTHING ; 
#define  WINDOW_COPY_JUMPBACKWARD 131 
#define  WINDOW_COPY_JUMPFORWARD 130 
#define  WINDOW_COPY_JUMPTOBACKWARD 129 
#define  WINDOW_COPY_JUMPTOFORWARD 128 
 int /*<<< orphan*/  FUNC0 (struct window_mode_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct window_mode_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct window_mode_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct window_mode_entry*) ; 

__attribute__((used)) static enum window_copy_cmd_action
FUNC4(struct window_copy_cmd_state *cs)
{
	struct window_mode_entry	*wme = cs->wme;
	struct window_copy_mode_data	*data = wme->data;
	u_int				 np = wme->prefix;

	switch (data->jumptype) {
	case WINDOW_COPY_JUMPFORWARD:
		for (; np != 0; np--)
			FUNC1(wme);
		break;
	case WINDOW_COPY_JUMPBACKWARD:
		for (; np != 0; np--)
			FUNC0(wme);
		break;
	case WINDOW_COPY_JUMPTOFORWARD:
		for (; np != 0; np--)
			FUNC3(wme);
		break;
	case WINDOW_COPY_JUMPTOBACKWARD:
		for (; np != 0; np--)
			FUNC2(wme);
		break;
	}
	return (WINDOW_COPY_CMD_NOTHING);
}