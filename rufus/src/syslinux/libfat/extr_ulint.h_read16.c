
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned short uint16_t ;
typedef int le16_t ;



__attribute__((used)) static inline unsigned short read16(le16_t * _p)
{
    return *((const uint16_t *)_p);
}
