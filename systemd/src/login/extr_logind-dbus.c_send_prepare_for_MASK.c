#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  bus; } ;
typedef  TYPE_1__ Manager ;
typedef  scalar_t__ InhibitWhat ;

/* Variables and functions */
 scalar_t__ INHIBIT_SHUTDOWN ; 
 int /*<<< orphan*/  INHIBIT_SLEEP ; 
 TYPE_1__* FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,char*,char*,char*,int) ; 

__attribute__((used)) static int FUNC3(Manager *m, InhibitWhat w, bool _active) {
        int active = _active;

        FUNC1(m);
        FUNC1(FUNC0(w, INHIBIT_SHUTDOWN, INHIBIT_SLEEP));

        return FUNC2(m->bus,
                                  "/org/freedesktop/login1",
                                  "org.freedesktop.login1.Manager",
                                  w == INHIBIT_SHUTDOWN ? "PrepareForShutdown" : "PrepareForSleep",
                                  "b",
                                  active);
}