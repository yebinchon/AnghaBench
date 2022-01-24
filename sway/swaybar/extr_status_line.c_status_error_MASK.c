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
struct status_line {char const* text; int /*<<< orphan*/  protocol; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROTOCOL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct status_line*) ; 

void FUNC1(struct status_line *status, const char *text) {
	FUNC0(status);
	status->protocol = PROTOCOL_ERROR;
	status->text = text;
}