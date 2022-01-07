
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int gboolean ;
struct TYPE_2__ {int repo_version; } ;
typedef TYPE_1__ CloneTask ;


 int FALSE ;
 int sqlite3_column_int (int *,int ) ;

__attribute__((used)) static gboolean
load_version_info_cb (sqlite3_stmt *stmt, void *data)
{
    CloneTask *task = data;
    int repo_version;

    repo_version = sqlite3_column_int (stmt, 0);

    task->repo_version = repo_version;

    return FALSE;
}
