
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;



__attribute__((used)) static inline unsigned xiph_CountHeaders(const void *p_extra, unsigned i_extra)
{
    const uint8_t *p = (const uint8_t*) p_extra;
    if (!i_extra)
        return 0;

    if(1U + *p > i_extra)
        return 0;
    return *p + 1;
}
