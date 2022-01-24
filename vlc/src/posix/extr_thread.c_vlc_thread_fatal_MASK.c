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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char const*,char const*,unsigned int) ; 

__attribute__((used)) static void
FUNC8 (const char *action, int error,
                  const char *function, const char *file, unsigned line)
{
    int canc = FUNC5 ();
    FUNC2 (stderr, "LibVLC fatal error %s (%d) in thread %d ",
             action, error, FUNC6 ());
    FUNC7 (function, file, line);
    FUNC3 ("Thread error");
    FUNC1 (stderr);

    FUNC4 (canc);
    FUNC0 ();
}