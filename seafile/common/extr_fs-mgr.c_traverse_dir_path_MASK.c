#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gboolean ;
typedef  int /*<<< orphan*/  (* TraverseFSPathCallback ) (int /*<<< orphan*/ *,char*,TYPE_1__*,void*,scalar_t__*) ;
struct TYPE_11__ {scalar_t__ data; struct TYPE_11__* next; } ;
struct TYPE_10__ {TYPE_4__* entries; } ;
struct TYPE_9__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  SeafFSManager ;
typedef  TYPE_1__ SeafDirent ;
typedef  TYPE_3__ SeafDir ;
typedef  TYPE_4__ GList ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7 (SeafFSManager *mgr,
                   const char *repo_id,
                   int version,
                   const char *dir_path,
                   SeafDirent *dent,
                   TraverseFSPathCallback callback,
                   void *user_data)
{
    SeafDir *dir;
    GList *p;
    SeafDirent *seaf_dent;
    gboolean stop = FALSE;
    char *sub_path;
    int ret = 0;

    if (!callback (mgr, dir_path, dent, user_data, &stop))
        return -1;

    if (stop)
        return 0;

    dir = FUNC5 (mgr, repo_id, version, dent->id);
    if (!dir) {
        FUNC6 ("get seafdir %s:%s failed\n", repo_id, dent->id);
        return -1;
    }

    for (p = dir->entries; p; p = p->next) {
        seaf_dent = (SeafDirent *)p->data;
        sub_path = FUNC3 (dir_path, "/", seaf_dent->name, NULL);

        if (FUNC1(seaf_dent->mode)) {
            if (!callback (mgr, sub_path, seaf_dent, user_data, &stop)) {
                FUNC2 (sub_path);
                ret = -1;
                break;
            }
        } else if (FUNC0(seaf_dent->mode)) {
            if (FUNC7 (mgr, repo_id, version, sub_path, seaf_dent,
                                   callback, user_data) < 0) {
                FUNC2 (sub_path);
                ret = -1;
                break;
            }
        }
        FUNC2 (sub_path);
    }

    FUNC4 (dir);
    return ret;
}