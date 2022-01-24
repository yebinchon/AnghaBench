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
typedef  scalar_t__ SDL_LogPriority ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SDL_LOG_CATEGORY_VIDEO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 

__attribute__((used)) static void
FUNC7(void *avcl, int level, const char *fmt, va_list vl) {
    SDL_LogPriority priority = FUNC4(level);
    if (priority == 0) {
        return;
    }
    char *local_fmt = FUNC3(FUNC6(fmt) + 10);
    if (!local_fmt) {
        FUNC0("Could not allocate string");
        return;
    }
    // strcpy is safe here, the destination is large enough
    FUNC5(local_fmt, "[FFmpeg] ");
    FUNC5(local_fmt + 9, fmt);
    FUNC1(SDL_LOG_CATEGORY_VIDEO, priority, local_fmt, vl);
    FUNC2(local_fmt);
}