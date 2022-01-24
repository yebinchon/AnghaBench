#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int gint64 ;
struct TYPE_6__ {int /*<<< orphan*/  fs_mgr; } ;
struct TYPE_5__ {int file_size; } ;
typedef  TYPE_1__ Seafile ;
typedef  int /*<<< orphan*/  SeafFSManager ;

/* Variables and functions */
 TYPE_4__* seaf ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

gint64
FUNC3 (SeafFSManager *mgr,
                               const char *repo_id,
                               int version,
                               const char *file_id)
{
    Seafile *file;
    gint64 file_size;

    file = FUNC0 (seaf->fs_mgr, repo_id, version, file_id);
    if (!file) {
        FUNC1 ("Couldn't get file %s:%s\n", repo_id, file_id);
        return -1;
    }

    file_size = file->file_size;

    FUNC2 (file);
    return file_size;
}