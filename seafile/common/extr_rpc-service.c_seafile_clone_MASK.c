#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  clone_mgr; } ;
typedef  int /*<<< orphan*/  GError ;

/* Variables and functions */
 int /*<<< orphan*/  SEAFILE_DOMAIN ; 
 int /*<<< orphan*/  SEAF_ERR_BAD_ARGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* seaf ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const*,int,char const*,char const*,char const*,char const*,char const*,int,char const*,char const*,char const*,char const*,char const*,char const*,int /*<<< orphan*/ **) ; 
 int FUNC2 (char const*) ; 

char *
FUNC3 (const char *repo_id,
               int repo_version,
               const char *relay_id,
               const char *repo_name,
               const char *worktree,
               const char *token,
               const char *passwd,
               const char *magic,
               const char *peer_addr,
               const char *peer_port,
               const char *email,
               const char *random_key,
               int enc_version,
               const char *more_info,
               GError **error)
{
    if (!repo_id || FUNC2(repo_id) != 36) {
        FUNC0 (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Invalid repo id");
        return NULL;
    }

    if (!relay_id || FUNC2(relay_id) != 40) {
        FUNC0 (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS, "Invalid peer id");
        return NULL;
    }

    if (!worktree) {
        FUNC0 (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS,
                     "Worktre must be specified");
        return NULL;
    }

    if (!token || !peer_addr || !peer_port || !email ) {
        FUNC0 (error, SEAFILE_DOMAIN, SEAF_ERR_BAD_ARGS,
                     "Argument can't be NULL");
        return NULL;
    }

    return FUNC1 (seaf->clone_mgr,
                                        repo_id, repo_version,
                                        relay_id,
                                        repo_name, token,
                                        passwd, magic,
                                        enc_version,
                                        random_key,
                                        worktree,
                                        peer_addr, peer_port,
                                        email, more_info,
                                        error);
}