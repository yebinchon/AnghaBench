
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef int le32_t ;



__attribute__((used)) static inline unsigned int read32(le32_t * _p)
{
    return *((const uint32_t *)_p);
}
