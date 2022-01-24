#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  path; int /*<<< orphan*/  fd; } ;
typedef  TYPE_1__ JournalFile ;

/* Variables and functions */
 unsigned int FS_NOCOW_FL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,unsigned int*) ; 

__attribute__((used)) static int FUNC6(JournalFile *f) {
        unsigned attrs;
        int r;

        FUNC0(f);

        /* Before we write anything, check if the COW logic is turned
         * off on btrfs. Given our write pattern that is quite
         * unfriendly to COW file systems this should greatly improve
         * performance on COW file systems, such as btrfs, at the
         * expense of data integrity features (which shouldn't be too
         * bad, given that we do our own checksumming). */

        r = FUNC1(f->fd);
        if (r < 0)
                return FUNC4(r, "Failed to determine if journal is on btrfs: %m");
        if (!r)
                return 0;

        r = FUNC5(f->fd, &attrs);
        if (r < 0)
                return FUNC4(r, "Failed to read file attributes: %m");

        if (attrs & FS_NOCOW_FL) {
                FUNC2("Detected btrfs file system with copy-on-write disabled, all is good.");
                return 0;
        }

        FUNC3("Creating journal file %s on a btrfs file system, and copy-on-write is enabled. "
                   "This is likely to slow down journal access substantially, please consider turning "
                   "off the copy-on-write file attribute on the journal directory, using chattr +C.", f->path);

        return 1;
}