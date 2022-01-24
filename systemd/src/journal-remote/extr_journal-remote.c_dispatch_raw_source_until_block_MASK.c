#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_event_source ;
struct TYPE_3__ {int /*<<< orphan*/  fd; } ;
struct TYPE_4__ {TYPE_1__ importer; } ;
typedef  TYPE_2__ RemoteSource ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 int /*<<< orphan*/  SD_EVENT_OFF ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  journal_remote_server_global ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(sd_event_source *event,
                                           void *userdata) {
        RemoteSource *source = userdata;
        int r;

        /* Make sure event stays around even if source is destroyed */
        FUNC1(event);

        r = FUNC0(event, source->importer.fd, EPOLLIN, journal_remote_server_global);
        if (r != 1)
                /* No more data for now */
                FUNC2(event, SD_EVENT_OFF);

        FUNC3(event);

        return r;
}