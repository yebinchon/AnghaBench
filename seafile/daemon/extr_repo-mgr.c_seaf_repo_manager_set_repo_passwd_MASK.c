#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  enc_iv; int /*<<< orphan*/  enc_key; int /*<<< orphan*/  salt; int /*<<< orphan*/  random_key; int /*<<< orphan*/  enc_version; } ;
struct TYPE_9__ {TYPE_1__* priv; } ;
struct TYPE_8__ {int /*<<< orphan*/  db_lock; } ;
typedef  TYPE_2__ SeafRepoManager ;
typedef  TYPE_3__ SeafRepo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int 
FUNC4 (SeafRepoManager *manager,
                                   SeafRepo *repo,
                                   const char *passwd)
{
    int ret;

    if (FUNC3 (repo->enc_version, passwd, repo->random_key,
                                      repo->salt,
                                      repo->enc_key, repo->enc_iv) < 0)
        return -1;

    FUNC0 (&manager->priv->db_lock);

    ret = FUNC2 (manager, repo);

    FUNC1 (&manager->priv->db_lock);

    return ret;
}