#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  gint64 ;
typedef  int /*<<< orphan*/  SeafFSManager ;

/* Variables and functions */
 int /*<<< orphan*/  EMPTY_SHA1 ; 
 int /*<<< orphan*/  get_dir_size (int /*<<< orphan*/ *,char const*,int,char const*) ; 
 scalar_t__ strcmp (char const*,int /*<<< orphan*/ ) ; 

gint64
seaf_fs_manager_get_fs_size (SeafFSManager *mgr,
                             const char *repo_id,
                             int version,
                             const char *root_id)
{
     if (strcmp (root_id, EMPTY_SHA1) == 0)
        return 0;
     return get_dir_size (mgr, repo_id, version, root_id);
}