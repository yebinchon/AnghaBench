
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gsize ;
typedef int GChecksum ;


 int G_CHECKSUM_SHA1 ;
 int g_checksum_free (int *) ;
 int g_checksum_get_digest (int *,unsigned char*,int*) ;
 int * g_checksum_new (int ) ;
 int g_checksum_update (int *,void const*,unsigned long) ;

__attribute__((used)) static void hash_sha1_file(const void *buf, unsigned long len,
                           const char *type, unsigned char *sha1)
{
    GChecksum *c;
    gsize cs_len = 20;


    c = g_checksum_new (G_CHECKSUM_SHA1);
    g_checksum_update(c, buf, len);
    g_checksum_get_digest (c, sha1, &cs_len);
    g_checksum_free (c);
}
