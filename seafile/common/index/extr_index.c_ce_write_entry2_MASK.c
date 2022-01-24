#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void* sec; } ;
struct TYPE_5__ {void* sec; } ;
struct ondisk_cache_entry2 {char* name; int /*<<< orphan*/  flags; int /*<<< orphan*/  sha1; void* size; void* gid; void* uid; void* mode; void* ino; void* dev; TYPE_3__ mtime; TYPE_1__ ctime; } ;
struct TYPE_8__ {int /*<<< orphan*/  sec; } ;
struct TYPE_6__ {int /*<<< orphan*/  sec; } ;
struct cache_entry {int /*<<< orphan*/  name; int /*<<< orphan*/  ce_flags; int /*<<< orphan*/  sha1; int /*<<< orphan*/  ce_size; int /*<<< orphan*/  ce_gid; int /*<<< orphan*/  ce_uid; int /*<<< orphan*/  ce_mode; int /*<<< orphan*/  ce_ino; int /*<<< orphan*/  ce_dev; TYPE_4__ ce_mtime; TYPE_2__ ce_ctime; } ;
typedef  int /*<<< orphan*/  WriteIndexInfo ;

/* Variables and functions */
 struct ondisk_cache_entry2* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_entry*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,struct ondisk_cache_entry2*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ondisk_cache_entry2*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct cache_entry*) ; 

__attribute__((used)) static int FUNC10(WriteIndexInfo *info, int fd, struct cache_entry *ce)
{
    int size = FUNC9(ce);
    struct ondisk_cache_entry2 *ondisk = FUNC0(1, size);
    char *name;
    int result;

    ondisk->ctime.sec = FUNC5(ce->ce_ctime.sec);
    ondisk->mtime.sec = FUNC5(ce->ce_mtime.sec);
    ondisk->dev  = FUNC6(ce->ce_dev);
    ondisk->ino  = FUNC6(ce->ce_ino);
    ondisk->mode = FUNC6(ce->ce_mode);
    ondisk->uid  = FUNC6(ce->ce_uid);
    ondisk->gid  = FUNC6(ce->ce_gid);
    ondisk->size = FUNC5(ce->ce_size);
    FUNC4(ondisk->sha1, ce->sha1);
    ondisk->flags = FUNC7(ce->ce_flags);
    name = ondisk->name;
    FUNC8(name, ce->name, FUNC1(ce));

    result = FUNC2(info, fd, ondisk, size);
    FUNC3(ondisk);
    return result;
}