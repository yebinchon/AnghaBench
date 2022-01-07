
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct params_s {int p_append; scalar_t__ i_append; int * packets; int * packets_sizes; } ;


 int EXPECT_CLEANUP (int,int ) ;
 int VLC_SUCCESS ;
 int free (int ) ;
 int memcmp (int const*,int ,scalar_t__) ;
 int xiph_AppendHeaders (scalar_t__*,int *,int ,int ) ;

__attribute__((used)) static int test_xiph_AppendHeaders(const char *run,
                 const uint8_t *p_extra, size_t i_extra,
                 struct params_s *source)
{
    int ret = xiph_AppendHeaders(&source->i_append, &source->p_append,
                                 source->packets_sizes[0], source->packets[0]);
    if(ret == VLC_SUCCESS)
    {
        EXPECT_CLEANUP((i_extra == (unsigned)source->i_append),
                       free(source->p_append));
        EXPECT_CLEANUP(!memcmp(p_extra, source->p_append, source->i_append),
                       free(source->p_append));
    }
    return ret;
}
