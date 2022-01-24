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
struct TYPE_4__ {struct TYPE_4__* random_key; struct TYPE_4__* magic; struct TYPE_4__* client_version; struct TYPE_4__* device_name; struct TYPE_4__* repo_desc; struct TYPE_4__* repo_name; struct TYPE_4__* second_parent_id; struct TYPE_4__* parent_id; struct TYPE_4__* creator_name; struct TYPE_4__* desc; } ;
typedef  TYPE_1__ SeafCommit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC1 (SeafCommit *commit)
{
    FUNC0 (commit->desc);
    FUNC0 (commit->creator_name);
    if (commit->parent_id) FUNC0 (commit->parent_id);
    if (commit->second_parent_id) FUNC0 (commit->second_parent_id);
    if (commit->repo_name) FUNC0 (commit->repo_name);
    if (commit->repo_desc) FUNC0 (commit->repo_desc);
    if (commit->device_name) FUNC0 (commit->device_name);
    FUNC0 (commit->client_version);
    FUNC0 (commit->magic);
    FUNC0 (commit->random_key);
    FUNC0 (commit);
}