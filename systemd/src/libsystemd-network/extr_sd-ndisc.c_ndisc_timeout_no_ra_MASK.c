#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_6__ {int /*<<< orphan*/  timeout_no_ra; } ;
typedef  TYPE_1__ sd_ndisc ;
typedef  TYPE_1__ sd_event_source ;

/* Variables and functions */
 int /*<<< orphan*/  SD_NDISC_EVENT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(sd_event_source *s, uint64_t usec, void *userdata) {
        sd_ndisc *nd = userdata;

        FUNC0(s);
        FUNC0(nd);

        FUNC2("No RA received before link confirmation timeout");

        (void) FUNC1(nd->timeout_no_ra);
        FUNC3(nd, SD_NDISC_EVENT_TIMEOUT, NULL);

        return 0;
}