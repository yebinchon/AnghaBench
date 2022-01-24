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
struct swaynag_type {struct swaynag_type* output; struct swaynag_type* font; struct swaynag_type* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct swaynag_type*) ; 

void FUNC1(struct swaynag_type *type) {
	FUNC0(type->name);
	FUNC0(type->font);
	FUNC0(type->output);
	FUNC0(type);
}