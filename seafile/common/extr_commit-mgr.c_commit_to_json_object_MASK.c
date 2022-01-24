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
typedef  int /*<<< orphan*/  json_t ;
typedef  int gint64 ;
struct TYPE_3__ {char* commit_id; char* root_id; char* repo_id; char* creator_name; char* creator_id; char* desc; char* repo_name; char* repo_desc; char* device_name; char* client_version; int enc_version; char* magic; char* random_key; char* salt; int version; scalar_t__ repaired; scalar_t__ new_merge; scalar_t__ conflict; scalar_t__ no_local_history; scalar_t__ encrypted; int /*<<< orphan*/  repo_category; int /*<<< orphan*/  second_parent_id; int /*<<< orphan*/  parent_id; scalar_t__ ctime; } ;
typedef  TYPE_1__ SeafCommit ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static json_t *
FUNC4 (SeafCommit *commit)
{
    json_t *object;
    
    object = FUNC0 ();
 
    FUNC2 (object, "commit_id", commit->commit_id);
    FUNC2 (object, "root_id", commit->root_id);
    FUNC2 (object, "repo_id", commit->repo_id);
    if (commit->creator_name)
        FUNC2 (object, "creator_name", commit->creator_name);
    FUNC2 (object, "creator", commit->creator_id);
    FUNC2 (object, "description", commit->desc);
    FUNC1 (object, "ctime", (gint64)commit->ctime);
    FUNC3 (object, "parent_id", commit->parent_id);
    FUNC3 (object, "second_parent_id",
                                           commit->second_parent_id);
    /*
     * also save repo's properties to commit file, for easy sharing of
     * repo info 
     */
    FUNC2 (object, "repo_name", commit->repo_name);
    FUNC2 (object, "repo_desc",
                                   commit->repo_desc);
    FUNC3 (object, "repo_category",
                                           commit->repo_category);
    if (commit->device_name)
        FUNC2 (object, "device_name", commit->device_name);

    if (commit->client_version)
        FUNC2 (object, "client_version", commit->client_version);

    if (commit->encrypted)
        FUNC2 (object, "encrypted", "true");

    if (commit->encrypted) {
        FUNC1 (object, "enc_version", commit->enc_version);
        if (commit->enc_version >= 1)
            FUNC2 (object, "magic", commit->magic);
        if (commit->enc_version >= 2)
            FUNC2 (object, "key", commit->random_key);
        if (commit->enc_version >= 3)
            FUNC2 (object, "salt", commit->salt);
    }
    if (commit->no_local_history)
        FUNC1 (object, "no_local_history", 1);
    if (commit->version != 0)
        FUNC1 (object, "version", commit->version);
    if (commit->conflict)
        FUNC1 (object, "conflict", 1);
    if (commit->new_merge)
        FUNC1 (object, "new_merge", 1);
    if (commit->repaired)
        FUNC1 (object, "repaired", 1);

    return object;
}