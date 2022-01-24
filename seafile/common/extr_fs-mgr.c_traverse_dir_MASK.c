#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  (* TraverseFSTreeCallback ) (int /*<<< orphan*/ *,char const*,int,char const*,int /*<<< orphan*/ ,void*,scalar_t__*) ;
struct TYPE_8__ {scalar_t__ data; struct TYPE_8__* next; } ;
struct TYPE_7__ {TYPE_3__* entries; } ;
struct TYPE_6__ {char* id; int /*<<< orphan*/  mode; } ;
typedef  int /*<<< orphan*/  SeafFSManager ;
typedef  TYPE_1__ SeafDirent ;
typedef  TYPE_2__ SeafDir ;
typedef  TYPE_3__ GList ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  SEAF_METADATA_TYPE_DIR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char const*,int,char*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,char const*,int,char const*,int /*<<< orphan*/ ,void*,scalar_t__*),void*,scalar_t__) ; 

__attribute__((used)) static int
FUNC6 (SeafFSManager *mgr,
              const char *repo_id,
              int version,
              const char *id,
              TraverseFSTreeCallback callback,
              void *user_data,
              gboolean skip_errors)
{
    SeafDir *dir;
    GList *p;
    SeafDirent *seaf_dent;
    gboolean stop = FALSE;

    if (!callback (mgr, repo_id, version,
                   id, SEAF_METADATA_TYPE_DIR, user_data, &stop) &&
        !skip_errors)
        return -1;

    if (stop)
        return 0;

    dir = FUNC3 (mgr, repo_id, version, id);
    if (!dir) {
        FUNC4 ("[fs-mgr]get seafdir %s failed\n", id);
        if (skip_errors)
            return 0;
        return -1;
    }
    for (p = dir->entries; p; p = p->next) {
        seaf_dent = (SeafDirent *)p->data;

        if (FUNC1(seaf_dent->mode)) {
            if (FUNC5 (mgr, repo_id, version, seaf_dent->id,
                               callback, user_data, skip_errors) < 0) {
                if (!skip_errors) {
                    FUNC2 (dir);
                    return -1;
                }
            }
        } else if (FUNC0(seaf_dent->mode)) {
            if (FUNC6 (mgr, repo_id, version, seaf_dent->id,
                              callback, user_data, skip_errors) < 0) {
                if (!skip_errors) {
                    FUNC2 (dir);
                    return -1;
                }
            }
        }
    }

    FUNC2 (dir);
    return 0;
}