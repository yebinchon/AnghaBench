
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqliterk_cipher_conf ;
struct TYPE_6__ {int onParseColumn; int onEndParseBtree; int onBeginParseBtree; int onEndParsePage; int onBeginParsePage; } ;
struct TYPE_7__ {int recursive; TYPE_1__ listen; int pager; } ;
typedef TYPE_2__ sqliterk ;


 int SQLITERK_MISUSE ;
 int SQLITERK_NOMEM ;
 int SQLITERK_OK ;
 int sqliterkClose (TYPE_2__*) ;
 int sqliterkNotify_onBeginParseBtree ;
 int sqliterkNotify_onBeginParsePage ;
 int sqliterkNotify_onEndParseBtree ;
 int sqliterkNotify_onEndParsePage ;
 int sqliterkNotify_onParseColumn ;
 int sqliterkOSError (int,char*,int) ;
 int sqliterkOSInfo (int,char*,char const*,char*) ;
 TYPE_2__* sqliterkOSMalloc (int) ;
 int sqliterkPagerOpen (char const*,int const*,int *) ;

int sqliterkOpen(const char *path,
                 const sqliterk_cipher_conf *cipher,
                 sqliterk **rk)
{
    if (!rk) {
        return SQLITERK_MISUSE;
    }
    int rc = SQLITERK_OK;
    sqliterk *therk = sqliterkOSMalloc(sizeof(sqliterk));
    if (!therk) {
        rc = SQLITERK_NOMEM;
        sqliterkOSError(rc, "Not enough memory, required: %zu bytes",
                        sizeof(sqliterk));
        goto sqliterkOpen_Failed;
    }

    rc = sqliterkPagerOpen(path, cipher, &therk->pager);
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
    sqliterkOSInfo(SQLITERK_OK, "RepairKit on '%s' opened, %s.", path,
                   cipher ? "encrypted" : "plain-text");
    return SQLITERK_OK;

sqliterkOpen_Failed:
    if (therk) {
        sqliterkClose(therk);
    }
    *rk = ((void*)0);
    return rc;
}
