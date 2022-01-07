
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int json_t ;
typedef int gchar ;
struct TYPE_6__ {int enc_version; int repo_id; scalar_t__ server_url; scalar_t__ is_readonly; scalar_t__ repo_salt; int * repo_version; scalar_t__ random_key; scalar_t__ passwd; int email; int peer_port; int peer_addr; int worktree; int peer_id; int token; int repo_name; } ;
struct TYPE_5__ {int db; } ;
typedef TYPE_1__ SeafCloneManager ;
typedef TYPE_2__ CloneTask ;


 int g_free (int *) ;
 int json_decref (int *) ;
 int * json_dumps (int *,int ) ;
 int json_integer (scalar_t__) ;
 int * json_object () ;
 int json_object_set_new (int *,char*,int ) ;
 int json_string (scalar_t__) ;
 int sqlite3_free (char*) ;
 char* sqlite3_mprintf (char*,int ,int,...) ;
 scalar_t__ sqlite_query_exec (int ,char*) ;

__attribute__((used)) static int
save_task_to_db (SeafCloneManager *mgr, CloneTask *task)
{
    char *sql;

    if (task->passwd)
        sql = sqlite3_mprintf ("REPLACE INTO CloneTasks VALUES "
            "('%q', '%q', '%q', '%q', '%q', '%q', '%q', '%q', '%q')",
                                task->repo_id, task->repo_name,
                                task->token, task->peer_id,
                                task->worktree, task->passwd,
                                task->peer_addr, task->peer_port, task->email);
    else
        sql = sqlite3_mprintf ("REPLACE INTO CloneTasks VALUES "
            "('%q', '%q', '%q', '%q', '%q', NULL, '%q', '%q', '%q')",
                                task->repo_id, task->repo_name,
                                task->token, task->peer_id,
                                task->worktree, task->peer_addr,
                                task->peer_port, task->email);

    if (sqlite_query_exec (mgr->db, sql) < 0) {
        sqlite3_free (sql);
        return -1;
    }
    sqlite3_free (sql);

    if (task->passwd && task->enc_version >= 2 && task->random_key) {
        sql = sqlite3_mprintf ("REPLACE INTO CloneEncInfo VALUES "
                               "('%q', %d, '%q')",
                               task->repo_id, task->enc_version, task->random_key);
        if (sqlite_query_exec (mgr->db, sql) < 0) {
            sqlite3_free (sql);
            return -1;
        }
        sqlite3_free (sql);
    }

    sql = sqlite3_mprintf ("REPLACE INTO CloneVersionInfo VALUES "
                           "('%q', %d)",
                           task->repo_id, task->repo_version);
    if (sqlite_query_exec (mgr->db, sql) < 0) {
        sqlite3_free (sql);
        return -1;
    }
    sqlite3_free (sql);

    if (task->is_readonly || task->server_url || task->repo_salt) {

        json_t *object = ((void*)0);
        gchar *info = ((void*)0);

        object = json_object ();
        json_object_set_new (object, "is_readonly", json_integer (task->is_readonly));
        if (task->server_url)
            json_object_set_new (object, "server_url", json_string(task->server_url));

        info = json_dumps (object, 0);
        json_decref (object);
        sql = sqlite3_mprintf ("REPLACE INTO CloneTasksMoreInfo VALUES "
                           "('%q', '%q')", task->repo_id, info);
        if (sqlite_query_exec (mgr->db, sql) < 0) {
            sqlite3_free (sql);
            g_free (info);
            return -1;
        }
        sqlite3_free (sql);
        g_free (info);
    }

    return 0;
}
