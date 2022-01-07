
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int le8_t ;



__attribute__((used)) static inline void write8(le8_t * _p, uint8_t _v)
{
    *_p = _v;
}
