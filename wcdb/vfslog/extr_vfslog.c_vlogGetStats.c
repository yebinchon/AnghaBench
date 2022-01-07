
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zName; } ;
typedef TYPE_1__ sqlite3_vfs ;
typedef int sqlite3 ;
typedef TYPE_1__* VLogStat ;


 int SQLITE_FCNTL_VFSLOG_STAT ;
 int SQLITE_FCNTL_VFS_POINTER ;
 int SQLITE_NOTFOUND ;
 int SQLITE_OK ;
 int sqlite3_file_control (int *,char const*,int ,TYPE_1__**) ;
 scalar_t__ strcmp (int ,char*) ;

int vlogGetStats(sqlite3 *db, const char *dbName, VLogStat *stats)
{
    sqlite3_vfs *vfs;
    int rc = sqlite3_file_control(db, dbName, SQLITE_FCNTL_VFS_POINTER, &vfs);
    if (rc != SQLITE_OK)
        return rc;
    else if (!vfs->zName || strcmp(vfs->zName, "vfslog") != 0)
        return SQLITE_NOTFOUND;

    rc = sqlite3_file_control(db, dbName, SQLITE_FCNTL_VFSLOG_STAT, stats);
    return rc;
}
