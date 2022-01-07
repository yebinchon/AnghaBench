
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (unsigned char*,unsigned char const*,int) ;

__attribute__((used)) static inline void hashcpy(unsigned char *sha_dst, const unsigned char *sha_src)
{
    memcpy(sha_dst, sha_src, 20);
}
