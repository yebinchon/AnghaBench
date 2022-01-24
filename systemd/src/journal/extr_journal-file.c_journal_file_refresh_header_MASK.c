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
typedef  int /*<<< orphan*/  sd_id128_t ;
struct TYPE_5__ {int /*<<< orphan*/  fd; int /*<<< orphan*/  boot_id; struct TYPE_5__* header; int /*<<< orphan*/  machine_id; } ;
typedef  TYPE_1__ JournalFile ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOMEDIUM ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(JournalFile *f) {
        sd_id128_t boot_id;
        int r;

        FUNC1(f);
        FUNC1(f->header);

        r = FUNC6(&f->header->machine_id);
        if (FUNC0(r, -ENOENT, -ENOMEDIUM))
                /* We don't have a machine-id, let's continue without */
                FUNC7(f->header->machine_id);
        else if (r < 0)
                return r;

        r = FUNC5(&boot_id);
        if (r < 0)
                return r;

        f->header->boot_id = boot_id;

        r = FUNC4(f);

        /* Sync the online state to disk */
        (void) FUNC2(f->fd);

        /* We likely just created a new file, also sync the directory this file is located in. */
        (void) FUNC3(f->fd);

        return r;
}