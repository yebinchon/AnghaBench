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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  sd_event_source ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int /*<<< orphan*/  SD_EVENT_OFF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int FUNC2 (int,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(sd_event_source *s, int fd, uint32_t revents, void *userdata) {
        char c;

        FUNC0(FUNC1(fd, false) >= 0);

        FUNC0(FUNC2(fd, &c, sizeof(c)) == sizeof(c));
        /* When a character is written to this pipe we'll block until the pipe is closed. */

        FUNC0(FUNC2(fd, &c, sizeof(c)) == 0);

        FUNC0(FUNC1(fd, true) >= 0);

        FUNC0(FUNC3(s, SD_EVENT_OFF) >= 0);

        return 0;
}