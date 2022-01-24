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
struct TYPE_6__ {int enc_version; int /*<<< orphan*/  version; int /*<<< orphan*/  no_local_history; void* salt; void* random_key; void* magic; scalar_t__ encrypted; void* repo_desc; void* repo_name; } ;
struct TYPE_5__ {int enc_version; int /*<<< orphan*/  version; int /*<<< orphan*/  no_local_history; int /*<<< orphan*/  salt; int /*<<< orphan*/  random_key; int /*<<< orphan*/  magic; scalar_t__ encrypted; int /*<<< orphan*/  desc; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ SeafRepo ;
typedef  TYPE_2__ SeafCommit ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

void
FUNC1 (SeafRepo *repo, SeafCommit *commit)
{
    commit->repo_name = FUNC0 (repo->name);
    commit->repo_desc = FUNC0 (repo->desc);
    commit->encrypted = repo->encrypted;
    if (commit->encrypted) {
        commit->enc_version = repo->enc_version;
        if (commit->enc_version == 1)
            commit->magic = FUNC0 (repo->magic);
        else if (commit->enc_version == 2) {
            commit->magic = FUNC0 (repo->magic);
            commit->random_key = FUNC0 (repo->random_key);
        }
        else if (commit->enc_version == 3) {
            commit->magic = FUNC0 (repo->magic);
            commit->random_key = FUNC0 (repo->random_key);
            commit->salt = FUNC0 (repo->salt);
        }
    }
    commit->no_local_history = repo->no_local_history;
    commit->version = repo->version;
}