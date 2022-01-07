
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GUID ;



__attribute__((used)) static inline int hash_guid(GUID *guid)
{
    int i, hash = 0;

    for (i = 0; i < 8; i ++)
        hash ^= ((const short *)guid)[i];

    return hash & 0x1f;
}
