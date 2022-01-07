
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (void const*,void const*,int) ;

__attribute__((used)) static int fourcc_cmp(const void *key, const void *ent)
{
    return memcmp(key, ent, 4);
}
