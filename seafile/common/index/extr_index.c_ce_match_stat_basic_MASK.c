#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ sec; } ;
struct cache_entry {int ce_flags; int ce_mode; scalar_t__ ce_size; unsigned int ce_uid; unsigned int ce_gid; unsigned int ce_ino; int /*<<< orphan*/  sha1; TYPE_1__ ce_mtime; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int st_mode; scalar_t__ st_mtime; scalar_t__ st_size; scalar_t__ st_ino; scalar_t__ st_gid; scalar_t__ st_uid; } ;
typedef  TYPE_2__ SeafStat ;

/* Variables and functions */
 int CE_REMOVE ; 
 int DATA_CHANGED ; 
 unsigned int INODE_CHANGED ; 
 int MODE_CHANGED ; 
 unsigned int MTIME_CHANGED ; 
 unsigned int OWNER_CHANGED ; 
#define  S_IFGITLINK 130 
#define  S_IFLNK 129 
 int S_IFMT ; 
#define  S_IFREG 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int TYPE_CHANGED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 

__attribute__((used)) static int FUNC6(struct cache_entry *ce, SeafStat *st)
{
    unsigned int changed = 0;

    if (ce->ce_flags & CE_REMOVE)
        return MODE_CHANGED | DATA_CHANGED | TYPE_CHANGED;

    switch (ce->ce_mode & S_IFMT) {
    case S_IFREG:
        changed |= !FUNC2(st->st_mode) ? TYPE_CHANGED : 0;
        /* We consider only the owner x bit to be relevant for
         * "mode changes"
         */
#ifndef WIN32
        if ((0100 & (ce->ce_mode ^ st->st_mode)))
            changed |= MODE_CHANGED;
#endif
        break;
    case S_IFLNK:
        if (!FUNC1(st->st_mode))
            changed |= TYPE_CHANGED;
        break;
    case S_IFGITLINK:
        /* We ignore most of the st_xxx fields for gitlinks */
        if (!FUNC0(st->st_mode))
            changed |= TYPE_CHANGED;
        /* else if (ce_compare_gitlink(ce)) */
        /*     changed |= DATA_CHANGED; */
        return changed;
    default:
        FUNC5("internal error: ce_mode is %o\n", ce->ce_mode);
        return -1;
    }
    if (!FUNC3 (ce->name) && ce->ce_mtime.sec != st->st_mtime)
        changed |= MTIME_CHANGED;
    /* if (ce->ce_ctime.sec != st->st_ctime) */
    /*     changed |= CTIME_CHANGED; */

    if (ce->ce_size != st->st_size)
        changed |= DATA_CHANGED;

#if 0
    if (ce->ce_uid != (unsigned int) st->st_uid ||
        ce->ce_gid != (unsigned int) st->st_gid)
        changed |= OWNER_CHANGED;
    if (ce->ce_ino != (unsigned int) st->st_ino)
        changed |= INODE_CHANGED;

    /* Racily smudged entry? */
    if (!ce->ce_size) {
        if (!is_empty_blob_sha1(ce->sha1))
            changed |= DATA_CHANGED;
    }
#endif

    return changed;
}