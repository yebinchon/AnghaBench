
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
 int g_checksum_update (int *,unsigned char const*,int) ;
 int strlen (char const*) ;

int
calculate_sha1 (unsigned char *sha1, const char *msg, int len)
{
    GChecksum *c;
    gsize cs_len = 20;

    if (len < 0)
        len = strlen(msg);

    c = g_checksum_new (G_CHECKSUM_SHA1);
    g_checksum_update(c, (const unsigned char *)msg, len);
    g_checksum_get_digest (c, sha1, &cs_len);
    g_checksum_free (c);
    return 0;
}
