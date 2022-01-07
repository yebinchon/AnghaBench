
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sqlite3 ;
typedef int sql ;
struct TYPE_8__ {int enc_version; char* id; int enc_iv; int enc_key; } ;
struct TYPE_7__ {TYPE_1__* priv; } ;
struct TYPE_6__ {int * db; } ;
typedef TYPE_2__ SeafRepoManager ;
typedef TYPE_3__ SeafRepo ;


 int rawdata_to_hex (int ,char*,int) ;
 int snprintf (char*,int,char*,char*,char*,char*) ;
 scalar_t__ sqlite_query_exec (int *,char*) ;

__attribute__((used)) static int
save_repo_enc_info (SeafRepoManager *manager,
                    SeafRepo *repo)
{
    sqlite3 *db = manager->priv->db;
    char sql[512];
    char key[65], iv[33];

    if (repo->enc_version == 1) {
        rawdata_to_hex (repo->enc_key, key, 16);
        rawdata_to_hex (repo->enc_iv, iv, 16);
    } else if (repo->enc_version >= 2) {
        rawdata_to_hex (repo->enc_key, key, 32);
        rawdata_to_hex (repo->enc_iv, iv, 16);
    }

    snprintf (sql, sizeof(sql), "REPLACE INTO RepoKeys VALUES ('%s', '%s', '%s')",
              repo->id, key, iv);
    if (sqlite_query_exec (db, sql) < 0)
        return -1;

    return 0;
}
