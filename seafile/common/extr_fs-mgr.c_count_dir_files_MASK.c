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
struct TYPE_8__ {scalar_t__ data; struct TYPE_8__* next; } ;
struct TYPE_7__ {TYPE_3__* entries; } ;
struct TYPE_6__ {char* id; int /*<<< orphan*/  mode; } ;
typedef  int /*<<< orphan*/  SeafFSManager ;
typedef  TYPE_1__ SeafDirent ;
typedef  TYPE_2__ SeafDir ;
typedef  TYPE_3__ GList ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,char const*,int,char const*) ; 

__attribute__((used)) static int
FUNC4 (SeafFSManager *mgr, const char *repo_id, int version, const char *id)
{
    SeafDir *dir;
    SeafDirent *seaf_dent;
    int count = 0;
    int result;
    GList *p;

    dir = FUNC3 (mgr, repo_id, version, id);
    if (!dir)
        return -1;

    for (p = dir->entries; p; p = p->next) {
        seaf_dent = (SeafDirent *)p->data;

        if (FUNC1(seaf_dent->mode)) {
            count ++;
        } else if (FUNC0(seaf_dent->mode)) {
            result = FUNC4 (mgr, repo_id, version, seaf_dent->id);
            if (result < 0) {
                FUNC2 (dir);
                return result;
            }
            count += result;
        }
    }

    FUNC2 (dir);
    return count;
}