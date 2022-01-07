
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct params_s {int dummy; } ;


 int SplitCompare (char const*,unsigned int*,void const**,unsigned int,struct params_s const*) ;
 int VLC_SUCCESS ;
 int XIPH_MAX_HEADER_COUNT ;
 int xiph_SplitHeaders (unsigned int*,void const**,unsigned int*,size_t,int const*) ;

__attribute__((used)) static int test_xiph_SplitHeaders(const char *run,
                 const uint8_t *p_extra, size_t i_extra,
                 const struct params_s *source)
{
    const void *packets[XIPH_MAX_HEADER_COUNT];
    unsigned packet_sizes[XIPH_MAX_HEADER_COUNT];
    unsigned packet_count;
    int ret = xiph_SplitHeaders(packet_sizes, packets, &packet_count,
                                i_extra, p_extra);
    if(ret == VLC_SUCCESS)
        ret = SplitCompare(run, packet_sizes, packets, packet_count, source);
    return ret;
}
