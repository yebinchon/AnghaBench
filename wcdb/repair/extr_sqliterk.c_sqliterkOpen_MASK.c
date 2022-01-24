#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sqliterk_cipher_conf ;
struct TYPE_6__ {int /*<<< orphan*/  onParseColumn; int /*<<< orphan*/  onEndParseBtree; int /*<<< orphan*/  onBeginParseBtree; int /*<<< orphan*/  onEndParsePage; int /*<<< orphan*/  onBeginParsePage; } ;
struct TYPE_7__ {int recursive; TYPE_1__ listen; int /*<<< orphan*/  pager; } ;
typedef  TYPE_2__ sqliterk ;

/* Variables and functions */
 int SQLITERK_MISUSE ; 
 int SQLITERK_NOMEM ; 
 int SQLITERK_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  sqliterkNotify_onBeginParseBtree ; 
 int /*<<< orphan*/  sqliterkNotify_onBeginParsePage ; 
 int /*<<< orphan*/  sqliterkNotify_onEndParseBtree ; 
 int /*<<< orphan*/  sqliterkNotify_onEndParsePage ; 
 int /*<<< orphan*/  sqliterkNotify_onParseColumn ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*,char*) ; 
 TYPE_2__* FUNC3 (int) ; 
 int FUNC4 (char const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC5(const char *path,
                 const sqliterk_cipher_conf *cipher,
                 sqliterk **rk)
{
    if (!rk) {
        return SQLITERK_MISUSE;
    }
    int rc = SQLITERK_OK;
    sqliterk *therk = FUNC3(sizeof(sqliterk));
    if (!therk) {
        rc = SQLITERK_NOMEM;
        FUNC1(rc, "Not enough memory, required: %zu bytes",
                        sizeof(sqliterk));
        goto sqliterkOpen_Failed;
    }

    rc = FUNC4(path, cipher, &therk->pager);
    if (rc != SQLITERK_OK) {
        goto sqliterkOpen_Failed;
    }

    therk->listen.onBeginParsePage = sqliterkNotify_onBeginParsePage;
    therk->listen.onEndParsePage = sqliterkNotify_onEndParsePage;
    therk->listen.onBeginParseBtree = sqliterkNotify_onBeginParseBtree;
    therk->listen.onEndParseBtree = sqliterkNotify_onEndParseBtree;
    therk->listen.onParseColumn = sqliterkNotify_onParseColumn;
    therk->recursive = 1;

    *rk = therk;
    FUNC2(SQLITERK_OK, "RepairKit on '%s' opened, %s.", path,
                   cipher ? "encrypted" : "plain-text");
    return SQLITERK_OK;

sqliterkOpen_Failed:
    if (therk) {
        FUNC0(therk);
    }
    *rk = NULL;
    return rc;
}