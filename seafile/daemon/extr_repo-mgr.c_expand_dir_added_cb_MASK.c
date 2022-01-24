#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_7__ {int /*<<< orphan*/  size; int /*<<< orphan*/  modifier; int /*<<< orphan*/  mode; int /*<<< orphan*/  mtime; } ;
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/  modifier; int /*<<< orphan*/  mode; int /*<<< orphan*/  mtime; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  SeafFSManager ;
typedef  TYPE_1__ SeafDirent ;
typedef  int /*<<< orphan*/  GList ;
typedef  TYPE_2__ DiffEntry ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_STATUS_ADDED ; 
 int /*<<< orphan*/  DIFF_STATUS_DIR_ADDED ; 
 int /*<<< orphan*/  DIFF_TYPE_COMMITS ; 
 int /*<<< orphan*/  EMPTY_SHA1 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static gboolean
FUNC7 (SeafFSManager *mgr,
                     const char *path,
                     SeafDirent *dent,
                     void *user_data,
                     gboolean *stop)
{
    GList **expanded = user_data;
    DiffEntry *de = NULL;
    unsigned char sha1[20];

    FUNC5 (dent->id, sha1, 20);

    if (FUNC0(dent->mode) && FUNC6(dent->id, EMPTY_SHA1) == 0)
        de = FUNC2 (DIFF_TYPE_COMMITS, DIFF_STATUS_DIR_ADDED, sha1, path);
    else if (FUNC1(dent->mode))
        de = FUNC2 (DIFF_TYPE_COMMITS, DIFF_STATUS_ADDED, sha1, path);

    if (de) {
        de->mtime = dent->mtime;
        de->mode = dent->mode;
        de->modifier = FUNC4(dent->modifier);
        de->size = dent->size;
        *expanded = FUNC3 (*expanded, de);
    }

    return TRUE;
}