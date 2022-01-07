
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int gcry_md_hd_t ;


 int const* gcry_md_read (int ,int ) ;
 int gcry_md_reset (int ) ;
 int gcry_md_write (int ,void const*,size_t) ;

__attribute__((used)) static const uint8_t *
rtcp_digest (gcry_md_hd_t md, const void *data, size_t len)
{
    gcry_md_reset (md);
    gcry_md_write (md, data, len);
    return gcry_md_read (md, 0);
}
