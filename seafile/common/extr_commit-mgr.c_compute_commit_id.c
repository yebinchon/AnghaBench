
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int guchar ;
typedef int gsize ;
typedef int gint64 ;
typedef int ctime_n ;
struct TYPE_3__ {int commit_id; int ctime; scalar_t__ desc; scalar_t__ creator_name; scalar_t__ creator_id; scalar_t__ root_id; } ;
typedef TYPE_1__ SeafCommit ;
typedef int GChecksum ;


 int G_CHECKSUM_SHA1 ;
 int g_checksum_free (int *) ;
 int g_checksum_get_digest (int *,int *,int*) ;
 int * g_checksum_new (int ) ;
 int g_checksum_update (int *,int *,int) ;
 int hton64 (int ) ;
 int rawdata_to_hex (int *,int ,int) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static void compute_commit_id (SeafCommit* commit)
{
    GChecksum *ctx = g_checksum_new(G_CHECKSUM_SHA1);
    uint8_t sha1[20];
    gint64 ctime_n;

    g_checksum_update (ctx, (guchar *)commit->root_id, 41);
    g_checksum_update (ctx, (guchar *)commit->creator_id, 41);
    if (commit->creator_name)
        g_checksum_update (ctx, (guchar *)commit->creator_name, strlen(commit->creator_name)+1);
    g_checksum_update (ctx, (guchar *)commit->desc, strlen(commit->desc)+1);


    ctime_n = hton64 (commit->ctime);
    g_checksum_update (ctx, (guchar *)&ctime_n, sizeof(ctime_n));

    gsize len = 20;
    g_checksum_get_digest (ctx, sha1, &len);

    rawdata_to_hex (sha1, commit->commit_id, 20);
    g_checksum_free (ctx);
}
