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
typedef  int /*<<< orphan*/  uint32_t ;
struct swaybar_output {TYPE_1__* bar; } ;
struct status_line {int protocol; } ;
typedef  int /*<<< orphan*/  cairo_t ;
struct TYPE_2__ {struct status_line* status; } ;

/* Variables and functions */
#define  PROTOCOL_ERROR 131 
#define  PROTOCOL_I3BAR 130 
#define  PROTOCOL_TEXT 129 
#define  PROTOCOL_UNDEF 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct swaybar_output*,double*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct swaybar_output*,double*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct swaybar_output*,double*) ; 

__attribute__((used)) static uint32_t FUNC3(cairo_t *cairo,
		struct swaybar_output *output, double *x) {
	struct status_line *status = output->bar->status;
	switch (status->protocol) {
	case PROTOCOL_ERROR:
		return FUNC0(cairo, output, x);
	case PROTOCOL_TEXT:
		return FUNC2(cairo, output, x);
	case PROTOCOL_I3BAR:
		return FUNC1(cairo, output, x);
	case PROTOCOL_UNDEF:
		return 0;
	}
	return 0;
}