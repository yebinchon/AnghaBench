
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int gsize ;
typedef scalar_t__ gboolean ;
struct TYPE_5__ {scalar_t__ disable_block_hash; } ;
struct TYPE_4__ {int len; char* block_buf; } ;
typedef int SeafileCrypt ;
typedef int GChecksum ;
typedef TYPE_1__ CDCDescriptor ;


 int G_CHECKSUM_SHA1 ;
 int do_write_chunk (char const*,int,int *,char*,int) ;
 int g_checksum_free (int *) ;
 int g_checksum_get_digest (int *,int *,int*) ;
 int * g_checksum_new (int ) ;
 int g_checksum_update (int *,unsigned char*,int) ;
 int g_free (char*) ;
 char* gen_uuid () ;
 TYPE_3__* seaf ;
 int seaf_warning (char*) ;
 int seafile_encrypt (char**,int*,char*,int,int *) ;
 int strlen (char*) ;

int
seafile_write_chunk (const char *repo_id,
                     int version,
                     CDCDescriptor *chunk,
                     SeafileCrypt *crypt,
                     uint8_t *checksum,
                     gboolean write_data)
{
    GChecksum *ctx = g_checksum_new (G_CHECKSUM_SHA1);
    gsize len = 20;
    int ret = 0;



    if (crypt != ((void*)0) && chunk->len) {
        char *encrypted_buf = ((void*)0);
        int enc_len = -1;

        ret = seafile_encrypt (&encrypted_buf,
                               &enc_len,
                               chunk->block_buf,
                               chunk->len,
                               crypt);
        if (ret != 0) {
            seaf_warning ("Error: failed to encrypt block\n");
            g_checksum_free (ctx);
            return -1;
        }

        if (seaf->disable_block_hash) {
            char *uuid = gen_uuid();
            g_checksum_update (ctx, (unsigned char *)uuid, strlen(uuid));
            g_free(uuid);
        } else {
            g_checksum_update (ctx, (unsigned char *)encrypted_buf, enc_len);
        }
        g_checksum_get_digest (ctx, checksum, &len);

        if (write_data)
            ret = do_write_chunk (repo_id, version, checksum, encrypted_buf, enc_len);
        g_free (encrypted_buf);
    } else {

        if (seaf->disable_block_hash) {
            char *uuid = gen_uuid();
            g_checksum_update (ctx, (unsigned char *)uuid, strlen(uuid));
            g_free(uuid);
        }
        else {
            g_checksum_update (ctx, (unsigned char *)chunk->block_buf, chunk->len);
        }
        g_checksum_get_digest (ctx, checksum, &len);

        if (write_data)
            ret = do_write_chunk (repo_id, version, checksum, chunk->block_buf, chunk->len);
    }

    g_checksum_free (ctx);

    return ret;
}
