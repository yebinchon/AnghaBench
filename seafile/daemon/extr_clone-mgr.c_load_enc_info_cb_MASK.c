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
typedef  int /*<<< orphan*/  sqlite3_stmt ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_2__ {int enc_version; int /*<<< orphan*/  random_key; } ;
typedef  TYPE_1__ CloneTask ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static gboolean
FUNC3 (sqlite3_stmt *stmt, void *data)
{
    CloneTask *task = data;
    int enc_version;
    const char *random_key;

    enc_version = FUNC1 (stmt, 0);
    random_key = (const char *)FUNC2 (stmt, 1);

    task->enc_version = enc_version;
    task->random_key = FUNC0 (random_key);

    return FALSE;
}