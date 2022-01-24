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
struct sigaction {int /*<<< orphan*/  sa_handler; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  on_timeout ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  test_default_sample ; 

__attribute__((used)) static inline void FUNC5 (void)
{
    (void)test_default_sample; /* This one may not be used */

    /* Make sure "make check" does not get stuck */
    /* Timeout of 10secs by default */
    unsigned alarm_timeout = 10;
    /* Valid timeout value are < 0, for infinite, and > 0, for the number of
     * seconds */
    char *alarm_timeout_str = FUNC2("VLC_TEST_TIMEOUT");
    if (alarm_timeout_str)
    {
        int val = FUNC1(alarm_timeout_str);
        if (val <= 0)
            alarm_timeout = 0; /* infinite */
        else
            alarm_timeout = val;
    }
    if (alarm_timeout != 0)
    {
        struct sigaction sig = {
            .sa_handler = on_timeout,
        };
        FUNC4(SIGALRM, &sig, NULL);
        FUNC0 (alarm_timeout);
    }

    FUNC3( "VLC_PLUGIN_PATH", "../modules", 1 );
}