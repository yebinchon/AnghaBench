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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
#define  ERANGE 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (int,char*,int) ; 
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

    char buf[1000];
    const char *msg;

    switch (FUNC3 (error, buf, sizeof (buf)))
    {
        case 0:
            msg = buf;
            break;
        case ERANGE: /* should never happen */
            msg = "unknown (too big to display)";
            break;
        default:
            msg = "unknown (invalid error number)";
            break;
    }
    FUNC2 (stderr, " Error message: %s\n", msg);
    FUNC1 (stderr);

    FUNC4 (canc);
    FUNC0 ();
}