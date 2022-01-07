
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct params_s {int packets_count; int packets; scalar_t__ packets_sizes; } ;


 int EXPECT_CLEANUP (int,int ) ;
 int VLC_SUCCESS ;
 int free (void*) ;
 int memcmp (int const*,void*,size_t) ;
 int xiph_PackHeaders (int*,void**,unsigned int*,int ,int ) ;

__attribute__((used)) static int test_xiph_PackHeaders(const char *run,
                 const uint8_t *p_extra, size_t i_extra,
                 const struct params_s *source)
{
    void *p_result;
    int i_result;

    int ret = xiph_PackHeaders(&i_result, &p_result,
                               (unsigned *) source->packets_sizes,
                               source->packets, source->packets_count);
    if(ret == VLC_SUCCESS)
    {
        EXPECT_CLEANUP((i_extra == (unsigned)i_result), free(p_result));
        EXPECT_CLEANUP(!memcmp(p_extra, p_result, i_extra), free(p_result));
        free(p_result);
    }
    return ret;
}
