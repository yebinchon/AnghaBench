#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct SeafObjStore {TYPE_1__* bend; } ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_3__ {int /*<<< orphan*/  (* exists ) (TYPE_1__*,char const*,int,char const*) ;} ;
typedef  TYPE_1__ ObjBackend ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,int,char const*) ; 

gboolean
FUNC3 (struct SeafObjStore *obj_store,
                           const char *repo_id,
                           int version,
                           const char *obj_id)
{
    ObjBackend *bend = obj_store->bend;

    if (!repo_id || !FUNC1(repo_id) ||
        !obj_id || !FUNC0(obj_id))
        return FALSE;

    return bend->exists (bend, repo_id, version, obj_id);
}