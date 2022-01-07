
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params_s {unsigned int packets_count; void const** packets; unsigned int* packets_sizes; } ;


 int EXPECT (int) ;
 int VLC_SUCCESS ;

__attribute__((used)) static int SplitCompare(const char *run,
                        unsigned packet_size[],
                        const void *packet[], unsigned packet_count,
                        const struct params_s *source)
{
    EXPECT(source->packets_count == packet_count);
    for(unsigned i=0; i<packet_count; i++)
    {
        EXPECT(source->packets[i] == packet[i]);
        EXPECT(source->packets_sizes[i] == packet_size[i]);
    }
    return VLC_SUCCESS;
}
