
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int gsize ;
typedef int gboolean ;
struct TYPE_2__ {int block_ids; int type; } ;
typedef TYPE_1__ SeafileOndisk ;
typedef int GChecksum ;


 int FALSE ;
 int G_CHECKSUM_SHA1 ;
 scalar_t__ SEAF_METADATA_TYPE_FILE ;
 int TRUE ;
 int g_checksum_free (int *) ;
 int g_checksum_get_digest (int *,int *,int*) ;
 int * g_checksum_new (int ) ;
 int g_checksum_update (int *,int ,int) ;
 scalar_t__ ntohl (int ) ;
 int rawdata_to_hex (int *,char*,int) ;
 int seaf_warning (char*,...) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static gboolean
verify_seafile_v0 (const char *id, const void *data, int len, gboolean verify_id)
{
    const SeafileOndisk *ondisk = data;
    GChecksum *ctx;
    uint8_t sha1[20];
    gsize cs_len = 20;
    char check_id[41];

    if (len < sizeof(SeafileOndisk)) {
        seaf_warning ("[fs mgr] Corrupt seafile object %s.\n", id);
        return FALSE;
    }

    if (ntohl(ondisk->type) != SEAF_METADATA_TYPE_FILE) {
        seaf_warning ("[fd mgr] %s is not a file.\n", id);
        return FALSE;
    }

    int id_list_length = len - sizeof(SeafileOndisk);
    if (id_list_length % 20 != 0) {
        seaf_warning ("[fs mgr] Bad seafile id list length %d.\n", id_list_length);
        return FALSE;
    }

    if (!verify_id)
        return TRUE;

    ctx = g_checksum_new (G_CHECKSUM_SHA1);
    g_checksum_update (ctx, ondisk->block_ids, len - sizeof(SeafileOndisk));
    g_checksum_get_digest (ctx, sha1, &cs_len);
    g_checksum_free (ctx);

    rawdata_to_hex (sha1, check_id, 20);

    if (strcmp (check_id, id) == 0)
        return TRUE;
    else
        return FALSE;
}
