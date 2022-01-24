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
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mtime; int /*<<< orphan*/  st_mode; } ;
typedef  TYPE_1__ SeafStat ;
typedef  TYPE_2__ ChangeSetDirent ;
typedef  int /*<<< orphan*/  ChangeSetDir ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC1 (char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,char*,int) ; 

__attribute__((used)) static void
FUNC6 (ChangeSetDir *dir,
                 const char *dname,
                 unsigned char *sha1,
                 SeafStat *st,
                 const char *modifier,
                 ChangeSetDirent *in_new_dent)
{
    if (in_new_dent) {
        FUNC3 (in_new_dent->name);
        in_new_dent->name = FUNC4(dname);
        FUNC0 (dir, in_new_dent);
        return;
    }

    char id[41];
    FUNC5 (sha1, id, 20);
    ChangeSetDirent *new_dent;
    new_dent = FUNC1 (id, FUNC2(st->st_mode), dname,
                                     st->st_mtime, modifier, st->st_size);

    FUNC0 (dir, new_dent);
}