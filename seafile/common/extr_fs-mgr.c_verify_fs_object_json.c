
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int guint8 ;
typedef int gboolean ;


 int FALSE ;
 int calculate_sha1 (unsigned char*,char const*,int) ;
 int g_free (int *) ;
 int rawdata_to_hex (unsigned char*,char*,int) ;
 scalar_t__ seaf_decompress (int *,int,int **,int*) ;
 int seaf_warning (char*,char const*) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static gboolean
verify_fs_object_json (const char *obj_id, uint8_t *data, int len)
{
    guint8 *decompressed;
    int outlen;
    unsigned char sha1[20];
    char hex[41];

    if (seaf_decompress (data, len, &decompressed, &outlen) < 0) {
        seaf_warning ("Failed to decompress fs object %s.\n", obj_id);
        return FALSE;
    }

    calculate_sha1 (sha1, (const char *)decompressed, outlen);
    rawdata_to_hex (sha1, hex, 20);

    g_free (decompressed);
    return (strcmp(hex, obj_id) == 0);
}
