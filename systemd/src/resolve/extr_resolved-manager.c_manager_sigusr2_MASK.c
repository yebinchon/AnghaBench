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
struct signalfd_siginfo {int dummy; } ;
typedef  struct signalfd_siginfo const sd_event_source ;
typedef  struct signalfd_siginfo const Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct signalfd_siginfo const*) ; 
 int /*<<< orphan*/  FUNC1 (struct signalfd_siginfo const*) ; 

__attribute__((used)) static int FUNC2(sd_event_source *s, const struct signalfd_siginfo *si, void *userdata) {
        Manager *m = userdata;

        FUNC0(s);
        FUNC0(si);
        FUNC0(m);

        FUNC1(m);

        return 0;
}