
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint8_t ;


 unsigned int UINT_MAX ;
 unsigned int* realloc (unsigned int*,size_t const) ;

__attribute__((used)) static inline int AllocateOrGrow( uint8_t **pp_buffer, size_t *pi_buffer,
                                  unsigned i_width, uint8_t bytespp )
{
    if(UINT_MAX / bytespp < i_width)
        return -1;
    const size_t i_realloc = i_width * bytespp;
    if(*pi_buffer >= i_realloc)
        return 0;
    uint8_t *p_realloc = realloc(*pp_buffer, i_realloc);
    if(!p_realloc)
        return -1;
    *pp_buffer = p_realloc;
    *pi_buffer = i_realloc;
    return 0;
}
