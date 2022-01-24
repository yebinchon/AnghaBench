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
struct TYPE_4__ {int /*<<< orphan*/  sec; } ;
struct cache_entry {int ce_flags; int /*<<< orphan*/  ce_mode; TYPE_1__ ce_mtime; int /*<<< orphan*/  ce_size; int /*<<< orphan*/  modifier; int /*<<< orphan*/  sha1; int /*<<< orphan*/  name; } ;
struct TYPE_5__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  mtime; int /*<<< orphan*/  size; int /*<<< orphan*/  modifier; int /*<<< orphan*/  sha1; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ DiffEntry ;

/* Variables and functions */
 int /*<<< orphan*/  S_IFDIR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 struct cache_entry* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct cache_entry *
FUNC7 (DiffEntry *de)
{
    int size, namelen;
    struct cache_entry *ce;

    namelen = FUNC6(de->name);
    size = FUNC1(namelen);
    ce = FUNC2(1, size);
    FUNC5(ce->name, de->name, namelen);
    ce->ce_flags = namelen;

    FUNC5 (ce->sha1, de->sha1, 20);
    ce->modifier = FUNC4(de->modifier);
    ce->ce_size = de->size;
    ce->ce_mtime.sec = de->mtime;

    if (FUNC0(de->mode))
        ce->ce_mode = FUNC3 (de->mode);
    else
        ce->ce_mode = S_IFDIR;

    return ce;
}