
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int md5_signature (unsigned char*,unsigned long,unsigned char*) ;

uint32_t
hash_md5(const char *key, size_t key_length)
{
    unsigned char results[16];

    md5_signature((unsigned char*)key, (unsigned long)key_length, results);

    return ((uint32_t) (results[3] & 0xFF) << 24) |
           ((uint32_t) (results[2] & 0xFF) << 16) |
           ((uint32_t) (results[1] & 0xFF) << 8) |
           (results[0] & 0xFF);
}
