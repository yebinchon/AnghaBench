#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ count; TYPE_1__* iovec; } ;
struct TYPE_12__ {TYPE_3__ iovw; int /*<<< orphan*/  boot_id; int /*<<< orphan*/  ts; int /*<<< orphan*/  name; int /*<<< orphan*/  fd; } ;
struct TYPE_10__ {TYPE_6__ importer; struct TYPE_10__* writer; } ;
typedef  TYPE_1__ RemoteSource ;

/* Variables and functions */
 int EBADMSG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 

int FUNC8(RemoteSource *source, bool compress, bool seal) {
        int r;

        FUNC0(source);
        FUNC0(source->writer);

        r = FUNC3(&source->importer);
        if (r <= 0)
                return r;

        /* We have a full event */
        FUNC5("Received full event from source@%p fd:%d (%s)",
                  source, source->importer.fd, source->importer.name);

        if (source->importer.iovw.count == 0) {
                FUNC6("Entry with no payload, skipping");
                goto freeing;
        }

        FUNC0(source->importer.iovw.iovec);

        r = FUNC7(source->writer,
                         &source->importer.iovw,
                         &source->importer.ts,
                         &source->importer.boot_id,
                         compress, seal);
        if (r == -EBADMSG) {
                FUNC4(r, "Entry is invalid, ignoring.");
                r = 0;
        } else if (r < 0)
                FUNC4(r, "Failed to write entry of %zu bytes: %m",
                                FUNC1(&source->importer.iovw));
        else
                r = 1;

 freeing:
        FUNC2(&source->importer);
        return r;
}