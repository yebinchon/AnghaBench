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
struct output_config {struct output_config* background_option; struct output_config* background; struct output_config* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct output_config*) ; 

void FUNC1(struct output_config *oc) {
	if (!oc) {
		return;
	}
	FUNC0(oc->name);
	FUNC0(oc->background);
	FUNC0(oc->background_option);
	FUNC0(oc);
}