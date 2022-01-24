#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
typedef  scalar_t__ guint64 ;
typedef  scalar_t__ gint64 ;
struct TYPE_4__ {int enc_version; int version; void* repaired; void* conflict; void* new_merge; void* no_local_history; int /*<<< orphan*/ * salt; int /*<<< orphan*/ * random_key; int /*<<< orphan*/ * magic; void* encrypted; int /*<<< orphan*/ * client_version; int /*<<< orphan*/ * device_name; int /*<<< orphan*/ * repo_category; int /*<<< orphan*/ * repo_desc; int /*<<< orphan*/ * repo_name; int /*<<< orphan*/ * second_parent_id; int /*<<< orphan*/ * parent_id; } ;
typedef  TYPE_1__ SeafCommit ;

/* Variables and functions */
 void* FALSE ; 
 void* TRUE ; 
 char* FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC9 (char const*,char const*,char const*,char*,char const*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 scalar_t__ FUNC11 (char const*,char*) ; 
 int FUNC12 (char const*) ; 

__attribute__((used)) static SeafCommit *
FUNC13 (const char *commit_id, json_t *object)
{
    SeafCommit *commit = NULL;
    const char *root_id;
    const char *repo_id;
    const char *creator_name = NULL;
    const char *creator;
    const char *desc;
    gint64 ctime;
    const char *parent_id, *second_parent_id;
    const char *repo_name;
    const char *repo_desc;
    const char *repo_category;
    const char *device_name;
    const char *client_version;
    const char *encrypted = NULL;
    int enc_version = 0;
    const char *magic = NULL;
    const char *random_key = NULL;
    const char *salt = NULL;
    int no_local_history = 0;
    int version = 0;
    int conflict = 0, new_merge = 0;
    int repaired = 0;

    root_id = FUNC6 (object, "root_id");
    repo_id = FUNC6 (object, "repo_id");
    if (FUNC8 (object, "creator_name"))
        creator_name = FUNC7 (object, "creator_name");
    creator = FUNC6 (object, "creator");
    desc = FUNC6 (object, "description");
    if (!desc)
        desc = "";
    ctime = (guint64) FUNC5 (object, "ctime");
    parent_id = FUNC7 (object, "parent_id");
    second_parent_id = FUNC7 (object, "second_parent_id");

    repo_name = FUNC6 (object, "repo_name");
    if (!repo_name)
        repo_name = "";
    repo_desc = FUNC6 (object, "repo_desc");
    if (!repo_desc)
        repo_desc = "";
    repo_category = FUNC7 (object, "repo_category");
    device_name = FUNC7 (object, "device_name");
    client_version = FUNC7 (object, "client_version");

    if (FUNC8 (object, "encrypted"))
        encrypted = FUNC7 (object, "encrypted");

    if (encrypted && FUNC11(encrypted, "true") == 0
        && FUNC8 (object, "enc_version")) {
        enc_version = FUNC5 (object, "enc_version");
        magic = FUNC6 (object, "magic");
    }

    if (enc_version >= 2)
        random_key = FUNC6 (object, "key");
    if (enc_version >= 3)
        salt = FUNC6 (object, "salt");

    if (FUNC8 (object, "no_local_history"))
        no_local_history = FUNC5 (object, "no_local_history");

    if (FUNC8 (object, "version"))
        version = FUNC5 (object, "version");
    if (FUNC8 (object, "new_merge"))
        new_merge = FUNC5 (object, "new_merge");

    if (FUNC8 (object, "conflict"))
        conflict = FUNC5 (object, "conflict");

    if (FUNC8 (object, "repaired"))
        repaired = FUNC5 (object, "repaired");


    /* sanity check for incoming values. */
    if (!repo_id || !FUNC4(repo_id)  ||
        !root_id || !FUNC3(root_id) ||
        !creator || FUNC12(creator) != 40 ||
        (parent_id && !FUNC3(parent_id)) ||
        (second_parent_id && !FUNC3(second_parent_id)))
        return commit;

    switch (enc_version) {
    case 0:
        break;
    case 1:
        if (!magic || FUNC12(magic) != 32)
            return NULL;
        break;
    case 2:
        if (!magic || FUNC12(magic) != 64)
            return NULL;
        if (!random_key || FUNC12(random_key) != 96)
            return NULL;
        break;
    case 3:
        if (!magic || FUNC12(magic) != 64)
            return NULL;
        if (!random_key || FUNC12(random_key) != 96)
            return NULL;
        if (!salt || FUNC12(salt) != 64)
            return NULL;
        break;
    default:
        FUNC10 ("Unknown encryption version %d.\n", enc_version);
        return NULL;
    }

    char *creator_name_l = creator_name ? FUNC0 (creator_name, -1) : NULL;
    commit = FUNC9 (commit_id, repo_id, root_id,
                              creator_name_l, creator, desc, ctime);
    FUNC1 (creator_name_l);

    commit->parent_id = parent_id ? FUNC2(parent_id) : NULL;
    commit->second_parent_id = second_parent_id ? FUNC2(second_parent_id) : NULL;

    commit->repo_name = FUNC2(repo_name);
    commit->repo_desc = FUNC2(repo_desc);
    if (encrypted && FUNC11(encrypted, "true") == 0)
        commit->encrypted = TRUE;
    else
        commit->encrypted = FALSE;
    if (repo_category)
        commit->repo_category = FUNC2(repo_category);
    commit->device_name = FUNC2(device_name);
    commit->client_version = FUNC2(client_version);

    if (commit->encrypted) {
        commit->enc_version = enc_version;
        if (enc_version >= 1)
            commit->magic = FUNC2(magic);
        if (enc_version >= 2)
            commit->random_key = FUNC2 (random_key);
        if (enc_version >= 3)
            commit->salt = FUNC2(salt);
    }
    if (no_local_history)
        commit->no_local_history = TRUE;
    commit->version = version;
    if (new_merge)
        commit->new_merge = TRUE;
    if (conflict)
        commit->conflict = TRUE;
    if (repaired)
        commit->repaired = TRUE;

    return commit;
}