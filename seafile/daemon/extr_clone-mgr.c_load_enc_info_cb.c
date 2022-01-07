
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int gboolean ;
struct TYPE_2__ {int enc_version; int random_key; } ;
typedef TYPE_1__ CloneTask ;


 int FALSE ;
 int g_strdup (char const*) ;
 int sqlite3_column_int (int *,int ) ;
 scalar_t__ sqlite3_column_text (int *,int) ;

__attribute__((used)) static gboolean
load_enc_info_cb (sqlite3_stmt *stmt, void *data)
{
    CloneTask *task = data;
    int enc_version;
    const char *random_key;

    enc_version = sqlite3_column_int (stmt, 0);
    random_key = (const char *)sqlite3_column_text (stmt, 1);

    task->enc_version = enc_version;
    task->random_key = g_strdup (random_key);

    return FALSE;
}
