#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int enc_version; int /*<<< orphan*/  version; int /*<<< orphan*/  no_local_history; int /*<<< orphan*/  salt; int /*<<< orphan*/  random_key; int /*<<< orphan*/  magic; int /*<<< orphan*/  root_id; int /*<<< orphan*/  ctime; scalar_t__ encrypted; int /*<<< orphan*/  repo_desc; int /*<<< orphan*/  repo_name; } ;
struct TYPE_5__ {int enc_version; int /*<<< orphan*/  version; int /*<<< orphan*/  no_local_history; int /*<<< orphan*/  salt; int /*<<< orphan*/  random_key; int /*<<< orphan*/  magic; scalar_t__ encrypted; int /*<<< orphan*/  root_id; int /*<<< orphan*/  last_modify; void* desc; void* name; } ;
typedef  TYPE_1__ SeafRepo ;
typedef  TYPE_2__ SeafCommit ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void
FUNC2 (SeafRepo *repo, SeafCommit *commit)
{
    repo->name = FUNC0 (commit->repo_name);
    repo->desc = FUNC0 (commit->repo_desc);
    repo->encrypted = commit->encrypted;
    repo->last_modify = commit->ctime;
    FUNC1 (repo->root_id, commit->root_id, 40);
    if (repo->encrypted) {
        repo->enc_version = commit->enc_version;
        if (repo->enc_version == 1)
            FUNC1 (repo->magic, commit->magic, 32);
        else if (repo->enc_version == 2) {
            FUNC1 (repo->magic, commit->magic, 64);
            FUNC1 (repo->random_key, commit->random_key, 96);
        }
        else if (repo->enc_version == 3) {
            FUNC1 (repo->magic, commit->magic, 64);
            FUNC1 (repo->random_key, commit->random_key, 96);
            FUNC1 (repo->salt, commit->salt, 64);
        }
    }
    repo->no_local_history = commit->no_local_history;
    repo->version = commit->version;
}