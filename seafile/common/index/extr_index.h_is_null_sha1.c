
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (unsigned char const*,int ,int) ;
 int null_sha1 ;

__attribute__((used)) static inline int is_null_sha1(const unsigned char *sha1)
{
    return !memcmp(sha1, null_sha1, 20);
}
