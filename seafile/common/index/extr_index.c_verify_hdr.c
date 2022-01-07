
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_header {scalar_t__ hdr_signature; scalar_t__ hdr_version; } ;
typedef int gsize ;
typedef int GChecksum ;


 int CACHE_SIGNATURE ;
 int G_CHECKSUM_SHA1 ;
 int g_checksum_free (int *) ;
 int g_checksum_get_digest (int *,unsigned char*,int*) ;
 int * g_checksum_new (int ) ;
 int g_checksum_update (int *,unsigned char*,unsigned long) ;
 int g_critical (char*) ;
 scalar_t__ hashcmp (unsigned char*,unsigned char*) ;
 scalar_t__ htonl (int) ;

__attribute__((used)) static int verify_hdr(struct cache_header *hdr, unsigned long size)
{
    GChecksum *c;
    unsigned char sha1[20];
    gsize len = 20;

    if (hdr->hdr_signature != htonl(CACHE_SIGNATURE)) {
        g_critical("bad signature\n");
        return -1;
    }
    if (hdr->hdr_version != htonl(2) && hdr->hdr_version != htonl(3) &&
        hdr->hdr_version != htonl(4)) {
        g_critical("bad index version\n");
        return -1;
    }
    c = g_checksum_new (G_CHECKSUM_SHA1);
    g_checksum_update(c, (unsigned char *)hdr, size - 20);
    g_checksum_get_digest (c, sha1, &len);
    g_checksum_free (c);
    if (hashcmp(sha1, (unsigned char *)hdr + size - 20)) {
        g_critical("bad index file sha1 signature\n");
        return -1;
    }
    return 0;
}
