
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int mode ;
typedef scalar_t__ guint32 ;
typedef int gsize ;
typedef scalar_t__ gboolean ;
typedef int SeafdirOndisk ;
typedef int GChecksum ;


 scalar_t__ FALSE ;
 scalar_t__ GUINT32_SWAP_LE_BE (scalar_t__) ;
 scalar_t__ G_BIG_ENDIAN ;
 scalar_t__ G_BYTE_ORDER ;
 int G_CHECKSUM_SHA1 ;
 scalar_t__ MIN (scalar_t__,int) ;
 int SEAF_DIR_NAME_LEN ;
 scalar_t__ SEAF_METADATA_TYPE_DIR ;
 scalar_t__ TRUE ;
 int g_checksum_free (int *) ;
 int g_checksum_get_digest (int *,int *,int*) ;
 int * g_checksum_new (int ) ;
 int g_checksum_update (int *,unsigned char*,int) ;
 scalar_t__ get32bit (int const**) ;
 int memcpy (char*,int const*,scalar_t__) ;
 int rawdata_to_hex (int *,char*,int) ;
 int seaf_warning (char*,...) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static gboolean
verify_seafdir_v0 (const char *dir_id, const uint8_t *data, int len,
                   gboolean verify_id)
{
    guint32 meta_type;
    guint32 mode;
    char id[41];
    guint32 name_len;
    char name[SEAF_DIR_NAME_LEN];
    const uint8_t *ptr;
    int remain;
    int dirent_base_size;
    GChecksum *ctx;
    uint8_t sha1[20];
    gsize cs_len = 20;
    char check_id[41];

    if (len < sizeof(SeafdirOndisk)) {
        seaf_warning ("[fs mgr] Corrupt seafdir object %s.\n", dir_id);
        return FALSE;
    }

    ptr = data;
    remain = len;

    meta_type = get32bit (&ptr);
    remain -= 4;
    if (meta_type != SEAF_METADATA_TYPE_DIR) {
        seaf_warning ("Data does not contain a directory.\n");
        return FALSE;
    }

    if (verify_id)
        ctx = g_checksum_new (G_CHECKSUM_SHA1);

    dirent_base_size = 2 * sizeof(guint32) + 40;
    while (remain > dirent_base_size) {
        mode = get32bit (&ptr);
        memcpy (id, ptr, 40);
        id[40] = '\0';
        ptr += 40;
        name_len = get32bit (&ptr);
        remain -= dirent_base_size;
        if (remain >= name_len) {
            name_len = MIN (name_len, SEAF_DIR_NAME_LEN - 1);
            memcpy (name, ptr, name_len);
            ptr += name_len;
            remain -= name_len;
        } else {
            seaf_warning ("Bad data format for dir objcet %s.\n", dir_id);
            return FALSE;
        }

        if (verify_id) {

            if (G_BYTE_ORDER == G_BIG_ENDIAN)
                mode = GUINT32_SWAP_LE_BE (mode);

            g_checksum_update (ctx, (unsigned char *)id, 40);
            g_checksum_update (ctx, (unsigned char *)name, name_len);
            g_checksum_update (ctx, (unsigned char *)&mode, sizeof(mode));
        }
    }

    if (!verify_id)
        return TRUE;

    g_checksum_get_digest (ctx, sha1, &cs_len);
    rawdata_to_hex (sha1, check_id, 20);
    g_checksum_free (ctx);

    if (strcmp (check_id, dir_id) == 0)
        return TRUE;
    else
        return FALSE;
}
