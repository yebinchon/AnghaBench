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
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  time_t ;
typedef  int sway_log_importance_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  STDERR_FILENO ; 
 int SWAY_LOG_IMPORTANCE_LAST ; 
 scalar_t__ colored ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct tm* FUNC2 (int /*<<< orphan*/ *,struct tm*) ; 
 int log_importance ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char** verbosity_colors ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(sway_log_importance_t verbosity, const char *fmt,
		va_list args) {
	if (verbosity > log_importance) {
		return;
	}
	// prefix the time to the log message
	struct tm result;
	time_t t = FUNC4(NULL);
	struct tm *tm_info = FUNC2(&t, &result);
	char buffer[26];

	// generate time prefix
	FUNC3(buffer, sizeof(buffer), "%F %T - ", tm_info);
	FUNC0(stderr, "%s", buffer);

	unsigned c = (verbosity < SWAY_LOG_IMPORTANCE_LAST) ? verbosity :
		SWAY_LOG_IMPORTANCE_LAST - 1;

	if (colored && FUNC1(STDERR_FILENO)) {
		FUNC0(stderr, "%s", verbosity_colors[c]);
	}

	FUNC5(stderr, fmt, args);

	if (colored && FUNC1(STDERR_FILENO)) {
		FUNC0(stderr, "\x1B[0m");
	}
	FUNC0(stderr, "\n");
}