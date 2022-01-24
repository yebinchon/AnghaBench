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
typedef  scalar_t__ uint32_t ;
struct swaynag {int scale; scalar_t__ height; int /*<<< orphan*/  message; TYPE_1__* type; } ;
typedef  int /*<<< orphan*/  cairo_t ;
struct TYPE_2__ {int message_padding; int /*<<< orphan*/  font; int /*<<< orphan*/  text; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ *,int,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t FUNC4(cairo_t *cairo, struct swaynag *swaynag) {
	int text_width, text_height;
	FUNC2(cairo, swaynag->type->font, &text_width, &text_height, NULL,
			swaynag->scale, true, "%s", swaynag->message);

	int padding = swaynag->type->message_padding * swaynag->scale;

	uint32_t ideal_height = text_height + padding * 2;
	uint32_t ideal_surface_height = ideal_height / swaynag->scale;
	if (swaynag->height < ideal_surface_height) {
		return ideal_surface_height;
	}

	FUNC1(cairo, swaynag->type->text);
	FUNC0(cairo, padding, (int)(ideal_height - text_height) / 2);
	FUNC3(cairo, swaynag->type->font, swaynag->scale, false,
			"%s", swaynag->message);

	return ideal_surface_height;
}