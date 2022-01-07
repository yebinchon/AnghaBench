
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (unsigned char const*,unsigned char const*,int) ;

__attribute__((used)) static inline int hashcmp(const unsigned char *sha1, const unsigned char *sha2)
{
    return memcmp(sha1, sha2, 20);
}
