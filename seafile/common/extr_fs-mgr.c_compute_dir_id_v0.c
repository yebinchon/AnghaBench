
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int mode_le ;
typedef int guint32 ;
typedef int gsize ;
struct TYPE_8__ {scalar_t__ data; struct TYPE_8__* next; } ;
struct TYPE_7__ {int dir_id; } ;
struct TYPE_6__ {int name_len; int mode; scalar_t__ name; scalar_t__ id; } ;
typedef TYPE_1__ SeafDirent ;
typedef TYPE_2__ SeafDir ;
typedef TYPE_3__ GList ;
typedef int GChecksum ;


 int GUINT32_SWAP_LE_BE (int ) ;
 scalar_t__ G_BIG_ENDIAN ;
 scalar_t__ G_BYTE_ORDER ;
 int G_CHECKSUM_SHA1 ;
 int g_checksum_get_digest (int *,int *,int*) ;
 int * g_checksum_new (int ) ;
 int g_checksum_update (int *,unsigned char*,int) ;
 int memset (int ,int ,int) ;
 int rawdata_to_hex (int *,int ,int) ;

__attribute__((used)) static void compute_dir_id_v0 (SeafDir *dir, GList *entries)
{
    GChecksum *ctx;
    GList *p;
    uint8_t sha1[20];
    gsize len = 20;
    SeafDirent *dent;
    guint32 mode_le;


    if (entries == ((void*)0)) {
        memset (dir->dir_id, '0', 40);
        return;
    }

    ctx = g_checksum_new (G_CHECKSUM_SHA1);
    for (p = entries; p; p = p->next) {
        dent = (SeafDirent *)p->data;
        g_checksum_update (ctx, (unsigned char *)dent->id, 40);
        g_checksum_update (ctx, (unsigned char *)dent->name, dent->name_len);

        if (G_BYTE_ORDER == G_BIG_ENDIAN)
            mode_le = GUINT32_SWAP_LE_BE (dent->mode);
        else
            mode_le = dent->mode;
        g_checksum_update (ctx, (unsigned char *)&mode_le, sizeof(mode_le));
    }
    g_checksum_get_digest (ctx, sha1, &len);

    rawdata_to_hex (sha1, dir->dir_id, 20);
}
