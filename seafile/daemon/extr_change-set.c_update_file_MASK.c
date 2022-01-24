#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* gint64 ;
struct TYPE_6__ {int /*<<< orphan*/  modifier; int /*<<< orphan*/  id; void* size; void* mtime; int /*<<< orphan*/  mode; } ;
struct TYPE_5__ {scalar_t__ st_size; scalar_t__ st_mtime; int /*<<< orphan*/  st_mode; } ;
typedef  TYPE_1__ SeafStat ;
typedef  TYPE_2__ ChangeSetDirent ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC5 (ChangeSetDirent *dent,
             unsigned char *sha1,
             SeafStat *st,
             const char *modifier)
{
    if (!sha1 || !st || !FUNC0(st->st_mode))
        return;
    dent->mode = FUNC1(st->st_mode);
    dent->mtime = (gint64)st->st_mtime;
    dent->size = (gint64)st->st_size;
    FUNC4 (sha1, dent->id, 20);

    FUNC2 (dent->modifier);
    dent->modifier = FUNC3(modifier);
}