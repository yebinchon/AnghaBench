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
struct wl_cursor {TYPE_1__** images; } ;
struct swaynag_pointer {int /*<<< orphan*/  cursor_surface; TYPE_1__* cursor_image; int /*<<< orphan*/  serial; int /*<<< orphan*/  pointer; scalar_t__ cursor_theme; } ;
struct swaynag {unsigned int scale; int /*<<< orphan*/  shm; struct swaynag_pointer pointer; } ;
struct TYPE_2__ {int hotspot_x; int hotspot_y; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT32_MAX ; 
 scalar_t__ errno ; 
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*) ; 
 unsigned int FUNC2 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 struct wl_cursor* FUNC5 (scalar_t__,char*) ; 
 scalar_t__ FUNC6 (char const*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC12(struct swaynag *swaynag) {
	struct swaynag_pointer *pointer = &swaynag->pointer;
	if (swaynag->pointer.cursor_theme) {
		FUNC4(swaynag->pointer.cursor_theme);
	}
	const char *cursor_theme = FUNC0("XCURSOR_THEME");
	unsigned cursor_size = 24;
	const char *env_cursor_size = FUNC0("XCURSOR_SIZE");
	if (env_cursor_size && FUNC1(env_cursor_size) > 0) {
		errno = 0;
		char *end;
		unsigned size = FUNC2(env_cursor_size, &end, 10);
		if (!*end && errno == 0) {
			cursor_size = size;
		}
	}
	pointer->cursor_theme = FUNC6(
		cursor_theme, cursor_size * swaynag->scale, swaynag->shm);
	struct wl_cursor *cursor =
		FUNC5(pointer->cursor_theme, "left_ptr");
	pointer->cursor_image = cursor->images[0];
	FUNC11(pointer->cursor_surface,
			swaynag->scale);
	FUNC8(pointer->cursor_surface,
			FUNC3(pointer->cursor_image), 0, 0);
	FUNC7(pointer->pointer, pointer->serial,
			pointer->cursor_surface,
			pointer->cursor_image->hotspot_x / swaynag->scale,
			pointer->cursor_image->hotspot_y / swaynag->scale);
	FUNC10(pointer->cursor_surface, 0, 0,
			INT32_MAX, INT32_MAX);
	FUNC9(pointer->cursor_surface);
}