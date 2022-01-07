
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 unsigned int GetWBE (int const*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 unsigned int xiph_CountLavcHeaders (int const*,unsigned int) ;

__attribute__((used)) static inline int xiph_SplitLavcHeaders(unsigned packet_size[],
                                        const void *packet[], unsigned *packet_count,
                                        unsigned i_extra, const void *p_extra)
{
    const uint8_t *current = (const uint8_t *)p_extra;
    const uint8_t *end = &current[i_extra];
    if (i_extra < 2)
        return VLC_EGENERIC;

    const unsigned count = xiph_CountLavcHeaders(current, i_extra);
    if(count == 0)
        return VLC_EGENERIC;
    if (packet_count)
        *packet_count = count;

    for (unsigned i=0; i < count; i++)
    {

        packet_size[i] = GetWBE(current);
        if(&current[2U + packet_size[i]] > end)
            return VLC_EGENERIC;
        packet[i] = current + 2;
        current += packet_size[i] + 2;
    }
    return VLC_SUCCESS;
}
