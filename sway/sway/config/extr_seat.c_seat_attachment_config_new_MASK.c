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
struct seat_attachment_config {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 struct seat_attachment_config* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

struct seat_attachment_config *FUNC2(void) {
	struct seat_attachment_config *attachment =
		FUNC0(1, sizeof(struct seat_attachment_config));
	if (!attachment) {
		FUNC1(SWAY_DEBUG, "cannot allocate attachment config");
		return NULL;
	}
	return attachment;
}