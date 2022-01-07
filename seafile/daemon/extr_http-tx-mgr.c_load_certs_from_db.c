
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3 ;
typedef int X509_STORE ;
struct TYPE_2__ {int seaf_dir; } ;


 char* g_build_filename (int ,char*,int *) ;
 int g_free (char*) ;
 int load_certs ;
 TYPE_1__* seaf ;
 int seaf_warning (char*) ;
 int sqlite_close_db (int *) ;
 scalar_t__ sqlite_foreach_selected_row (int *,char*,int ,int *) ;
 scalar_t__ sqlite_open_db (char*,int **) ;

__attribute__((used)) static int
load_certs_from_db (X509_STORE *store)
{
    char *cert_db_path = ((void*)0);
    sqlite3 *db = ((void*)0);
    char *sql;
    int ret = 0;

    cert_db_path = g_build_filename (seaf->seaf_dir, "certs.db", ((void*)0));
    if (sqlite_open_db (cert_db_path, &db) < 0) {
        seaf_warning ("Failed to open certs.db\n");
        ret = -1;
        goto out;
    }

    sql = "SELECT cert FROM Certs;";

    if (sqlite_foreach_selected_row (db, sql, load_certs, store) < 0) {
        ret = -1;
        goto out;
    }

out:
    g_free (cert_db_path);
    if (db)
        sqlite_close_db (db);

    return ret;
}
