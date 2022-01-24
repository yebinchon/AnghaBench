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
struct sway_view {char* title_format; } ;

/* Variables and functions */
 size_t FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* FUNC3 (char*,char) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sway_view*) ; 
 int /*<<< orphan*/  FUNC8 (struct sway_view*) ; 
 int /*<<< orphan*/  FUNC9 (struct sway_view*) ; 
 int /*<<< orphan*/  FUNC10 (struct sway_view*) ; 
 int /*<<< orphan*/  FUNC11 (struct sway_view*) ; 

__attribute__((used)) static size_t FUNC12(struct sway_view *view, char *buffer) {
	if (!view->title_format || FUNC4(view->title_format, "%title") == 0) {
		return FUNC0(buffer, FUNC11(view));
	}

	size_t len = 0;
	char *format = view->title_format;
	char *next = FUNC3(format, '%');
	while (next) {
		// Copy everything up to the %
		FUNC2(buffer, format, next - format);
		len += next - format;
		format = next;

		if (FUNC6(next, "%title", 6) == 0) {
			len += FUNC0(buffer, FUNC11(view));
			format += 6;
		} else if (FUNC6(next, "%app_id", 7) == 0) {
			len += FUNC0(buffer, FUNC7(view));
			format += 7;
		} else if (FUNC6(next, "%class", 6) == 0) {
			len += FUNC0(buffer, FUNC8(view));
			format += 6;
		} else if (FUNC6(next, "%instance", 9) == 0) {
			len += FUNC0(buffer, FUNC9(view));
			format += 9;
		} else if (FUNC6(next, "%shell", 6) == 0) {
			len += FUNC0(buffer, FUNC10(view));
			format += 6;
		} else {
			FUNC1(buffer, "%");
			++format;
			++len;
		}
		next = FUNC3(format, '%');
	}
	FUNC1(buffer, format);
	len += FUNC5(format);

	return len;
}