
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sqlite3_stmt ;
typedef int gboolean ;
struct TYPE_2__ {int enc_version; int enc_iv; int enc_key; } ;
typedef TYPE_1__ SeafRepo ;


 int FALSE ;
 int hex_to_rawdata (char const*,int ,int) ;
 scalar_t__ sqlite3_column_text (int *,int) ;

__attribute__((used)) static gboolean
load_keys_cb (sqlite3_stmt *stmt, void *vrepo)
{
    SeafRepo *repo = vrepo;
    const char *key, *iv;

    key = (const char *)sqlite3_column_text(stmt, 0);
    iv = (const char *)sqlite3_column_text(stmt, 1);

    if (repo->enc_version == 1) {
        hex_to_rawdata (key, repo->enc_key, 16);
        hex_to_rawdata (iv, repo->enc_iv, 16);
    } else if (repo->enc_version >= 2) {
        hex_to_rawdata (key, repo->enc_key, 32);
        hex_to_rawdata (iv, repo->enc_iv, 16);
    }

    return FALSE;
}
