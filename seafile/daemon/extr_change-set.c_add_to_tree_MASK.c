#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  fs_mgr; } ;
struct TYPE_21__ {char* repo_id; TYPE_2__* tree_root; } ;
struct TYPE_20__ {int /*<<< orphan*/  dents_i; int /*<<< orphan*/  version; int /*<<< orphan*/  dents; } ;
struct TYPE_19__ {char* name; int /*<<< orphan*/  mode; TYPE_2__* subdir; int /*<<< orphan*/  id; } ;
typedef  int /*<<< orphan*/  SeafStat ;
typedef  int /*<<< orphan*/  SeafDir ;
typedef  TYPE_1__ ChangeSetDirent ;
typedef  TYPE_2__ ChangeSetDir ;
typedef  TYPE_3__ ChangeSet ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 TYPE_2__* FUNC3 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*,unsigned char*,int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char**) ; 
 char** FUNC9 (char const*,char*,int /*<<< orphan*/ ) ; 
 int FUNC10 (char**) ; 
 char* FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,char*) ; 
 TYPE_6__* seaf ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,unsigned char*,int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void
FUNC19 (ChangeSet *changeset,
             unsigned char *sha1,
             SeafStat *st,
             const char *modifier,
             const char *path,
             ChangeSetDirent *new_dent)
{
    char *repo_id = changeset->repo_id;
    ChangeSetDir *root = changeset->tree_root;
    char **parts, *dname;
    int n, i;
    ChangeSetDir *dir;
    ChangeSetDirent *dent;
    SeafDir *seaf_dir;

    parts = FUNC9 (path, "/", 0);
    n = FUNC10(parts);
    dir = root;
    for (i = 0; i < n; i++) {
#if defined WIN32 || defined __APPLE__
    try_again:
#endif
        dname = parts[i];
        dent = FUNC6 (dir->dents, dname);

        if (dent) {
            if (FUNC0(dent->mode)) {
                if (i == (n-1))
                    /* Don't need to update empty dir */
                    break;

                if (!dent->subdir) {
                    seaf_dir = FUNC16(seaf->fs_mgr,
                                                           repo_id,
                                                           root->version,
                                                           dent->id);
                    if (!seaf_dir) {
                        FUNC17 ("Failed to load seafdir %s:%s\n",
                                      repo_id, dent->id);
                        break;
                    }
                    dent->subdir = FUNC15 (seaf_dir);
                    FUNC14 (seaf_dir);
                }
                dir = dent->subdir;
            } else if (FUNC1(dent->mode)) {
                if (i == (n-1)) {
                    /* File exists, update it. */
                    FUNC18 (dent, sha1, st, modifier);
                    break;
                }
            }
        } else {
#if defined WIN32 || defined __APPLE__
            /* Only effective for add operation, not applicable to rename. */
            if (!new_dent) {
                char *search_key = g_utf8_strdown (dname, -1);
                dent = g_hash_table_lookup (dir->dents_i, search_key);
                g_free (search_key);
                if (dent) {
                    remove_dent_from_dir (dir, dent->name);

                    g_free (dent->name);
                    dent->name = g_strdup(dname);
                    add_dent_to_dir (dir, dent);

                    goto try_again;
                }

                handle_case_conflict (changeset, dir, dname);
            }
#endif

            if (i == (n-1)) {
                FUNC4 (dir, dname, sha1, st, modifier, new_dent);
            } else {
                dir = FUNC3 (dir, dname);
            }
        }
    }

    FUNC8 (parts);
}