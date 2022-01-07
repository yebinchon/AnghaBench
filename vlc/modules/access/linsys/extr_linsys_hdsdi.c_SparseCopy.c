
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;



__attribute__((used)) static void SparseCopy( int16_t *p_dest, const int16_t *p_src,
                        size_t i_nb_samples, size_t i_offset, size_t i_stride )
{
    for ( size_t i = 0; i < i_nb_samples; i++ )
    {
        p_dest[2 * i] = p_src[i_offset];
        p_dest[2 * i + 1] = p_src[i_offset + 1];
        i_offset += 2 * i_stride;
    }
}
