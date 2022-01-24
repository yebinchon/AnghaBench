#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ts ;
typedef  int /*<<< orphan*/  bs ;
struct TYPE_8__ {unsigned long long referenced; unsigned long long exclusive; unsigned long long referenced_max; unsigned long long exclusive_max; } ;
struct TYPE_7__ {int read_only; int /*<<< orphan*/  otime; } ;
typedef  TYPE_1__ BtrfsSubvolInfo ;
typedef  TYPE_2__ BtrfsQuotaInfo ;

/* Variables and functions */
 int BTRFS_REMOVE_QUOTA ; 
 int BTRFS_REMOVE_RECURSIVE ; 
 int BTRFS_SNAPSHOT_FALLBACK_COPY ; 
 int BTRFS_SNAPSHOT_QUOTA ; 
 int BTRFS_SNAPSHOT_READ_ONLY ; 
 int BTRFS_SNAPSHOT_RECURSIVE ; 
 int FORMAT_BYTES_MAX ; 
 int FORMAT_TIMESTAMP_MAX ; 
 int O_CLOEXEC ; 
 int O_DIRECTORY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  WRITE_STRING_FILE_CREATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC6 (int) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC8 (char*) ; 
 int FUNC9 (char*,int) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ,unsigned long long) ; 
 int FUNC11 (char*,char*,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC12 (char*,int,unsigned long long) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (char*,int) ; 
 int FUNC17 (char*,int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int FUNC20 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int) ; 

int FUNC22(int argc, char *argv[]) {
        BtrfsQuotaInfo quota;
        int r, fd;

        fd = FUNC17("/", O_RDONLY|O_CLOEXEC|O_DIRECTORY);
        if (fd < 0)
                FUNC14(errno, "Failed to open root directory: %m");
        else {
                char ts[FORMAT_TIMESTAMP_MAX], bs[FORMAT_BYTES_MAX];
                BtrfsSubvolInfo info;

                r = FUNC5(fd, 0, &info);
                if (r < 0)
                        FUNC14(r, "Failed to get subvolume info: %m");
                else {
                        FUNC15("otime: %s", FUNC13(ts, sizeof(ts), info.otime));
                        FUNC15("read-only (search): %s", FUNC21(info.read_only));
                }

                r = FUNC2(fd, 0, &quota);
                if (r < 0)
                        FUNC14(r, "Failed to get quota info: %m");
                else {
                        FUNC15("referenced: %s", FUNC19(FUNC12(bs, sizeof(bs), quota.referenced)));
                        FUNC15("exclusive: %s", FUNC19(FUNC12(bs, sizeof(bs), quota.exclusive)));
                        FUNC15("referenced_max: %s", FUNC19(FUNC12(bs, sizeof(bs), quota.referenced_max)));
                        FUNC15("exclusive_max: %s", FUNC19(FUNC12(bs, sizeof(bs), quota.exclusive_max)));
                }

                r = FUNC6(fd);
                if (r < 0)
                        FUNC14(r, "Failed to get read only flag: %m");
                else
                        FUNC15("read-only (ioctl): %s", FUNC21(r));

                FUNC18(fd);
        }

        r = FUNC8("/xxxtest");
        if (r < 0)
                FUNC14(r, "Failed to make subvolume: %m");

        r = FUNC20("/xxxtest/afile", "ljsadhfljasdkfhlkjdsfha", WRITE_STRING_FILE_CREATE);
        if (r < 0)
                FUNC14(r, "Failed to write file: %m");

        r = FUNC11("/xxxtest", "/xxxtest2", 0);
        if (r < 0)
                FUNC14(r, "Failed to make snapshot: %m");

        r = FUNC11("/xxxtest", "/xxxtest3", BTRFS_SNAPSHOT_READ_ONLY);
        if (r < 0)
                FUNC14(r, "Failed to make snapshot: %m");

        r = FUNC9("/xxxtest", BTRFS_REMOVE_QUOTA);
        if (r < 0)
                FUNC14(r, "Failed to remove subvolume: %m");

        r = FUNC9("/xxxtest2", BTRFS_REMOVE_QUOTA);
        if (r < 0)
                FUNC14(r, "Failed to remove subvolume: %m");

        r = FUNC9("/xxxtest3", BTRFS_REMOVE_QUOTA);
        if (r < 0)
                FUNC14(r, "Failed to remove subvolume: %m");

        r = FUNC11("/etc", "/etc2", BTRFS_SNAPSHOT_READ_ONLY|BTRFS_SNAPSHOT_FALLBACK_COPY);
        if (r < 0)
                FUNC14(r, "Failed to make snapshot: %m");

        r = FUNC9("/etc2", BTRFS_REMOVE_QUOTA);
        if (r < 0)
                FUNC14(r, "Failed to remove subvolume: %m");

        r = FUNC8("/xxxrectest");
        if (r < 0)
                FUNC14(r, "Failed to make subvolume: %m");

        r = FUNC8("/xxxrectest/xxxrectest2");
        if (r < 0)
                FUNC14(r, "Failed to make subvolume: %m");

        r = FUNC8("/xxxrectest/xxxrectest3");
        if (r < 0)
                FUNC14(r, "Failed to make subvolume: %m");

        r = FUNC8("/xxxrectest/xxxrectest3/sub");
        if (r < 0)
                FUNC14(r, "Failed to make subvolume: %m");

        if (FUNC16("/xxxrectest/dir", 0755) < 0)
                FUNC14(errno, "Failed to make directory: %m");

        r = FUNC8("/xxxrectest/dir/xxxrectest4");
        if (r < 0)
                FUNC14(r, "Failed to make subvolume: %m");

        if (FUNC16("/xxxrectest/dir/xxxrectest4/dir", 0755) < 0)
                FUNC14(errno, "Failed to make directory: %m");

        r = FUNC8("/xxxrectest/dir/xxxrectest4/dir/xxxrectest5");
        if (r < 0)
                FUNC14(r, "Failed to make subvolume: %m");

        if (FUNC16("/xxxrectest/mnt", 0755) < 0)
                FUNC14(errno, "Failed to make directory: %m");

        r = FUNC11("/xxxrectest", "/xxxrectest2", BTRFS_SNAPSHOT_RECURSIVE);
        if (r < 0)
                FUNC14(r, "Failed to snapshot subvolume: %m");

        r = FUNC9("/xxxrectest", BTRFS_REMOVE_QUOTA|BTRFS_REMOVE_RECURSIVE);
        if (r < 0)
                FUNC14(r, "Failed to recursively remove subvolume: %m");

        r = FUNC9("/xxxrectest2", BTRFS_REMOVE_QUOTA|BTRFS_REMOVE_RECURSIVE);
        if (r < 0)
                FUNC14(r, "Failed to recursively remove subvolume: %m");

        r = FUNC8("/xxxquotatest");
        if (r < 0)
                FUNC14(r, "Failed to make subvolume: %m");

        r = FUNC4("/xxxquotatest", 0, true);
        if (r < 0)
                FUNC14(r, "Failed to set up auto qgroup: %m");

        r = FUNC8("/xxxquotatest/beneath");
        if (r < 0)
                FUNC14(r, "Failed to make subvolume: %m");

        r = FUNC4("/xxxquotatest/beneath", 0, false);
        if (r < 0)
                FUNC14(r, "Failed to set up auto qgroup: %m");

        r = FUNC3("/xxxquotatest/beneath", 0, 4ULL * 1024 * 1024 * 1024);
        if (r < 0)
                FUNC14(r, "Failed to set up quota limit: %m");

        r = FUNC10("/xxxquotatest", 0, 5ULL * 1024 * 1024 * 1024);
        if (r < 0)
                FUNC14(r, "Failed to set up quota limit: %m");

        r = FUNC11("/xxxquotatest", "/xxxquotatest2", BTRFS_SNAPSHOT_RECURSIVE|BTRFS_SNAPSHOT_QUOTA);
        if (r < 0)
                FUNC14(r, "Failed to setup snapshot: %m");

        r = FUNC1("/xxxquotatest2/beneath", 0, &quota);
        if (r < 0)
                FUNC14(r, "Failed to query quota: %m");

        FUNC0(quota.referenced_max == 4ULL * 1024 * 1024 * 1024);

        r = FUNC7("/xxxquotatest2", 0, &quota);
        if (r < 0)
                FUNC14(r, "Failed to query quota: %m");

        FUNC0(quota.referenced_max == 5ULL * 1024 * 1024 * 1024);

        r = FUNC9("/xxxquotatest", BTRFS_REMOVE_QUOTA|BTRFS_REMOVE_RECURSIVE);
        if (r < 0)
                FUNC14(r, "Failed remove subvolume: %m");

        r = FUNC9("/xxxquotatest2", BTRFS_REMOVE_QUOTA|BTRFS_REMOVE_RECURSIVE);
        if (r < 0)
                FUNC14(r, "Failed remove subvolume: %m");

        return 0;
}