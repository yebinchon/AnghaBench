
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct params_s {scalar_t__ packets_count; } ;


 int EXPECT (int) ;
 int OK ;
 scalar_t__ xiph_CountLavcHeaders (int const*,size_t) ;

__attribute__((used)) static int test_xiph_CountLavcHeaders(const char *run,
                 const uint8_t *p_extra, size_t i_extra,
                 const struct params_s *source)
{
    EXPECT(xiph_CountLavcHeaders(p_extra, i_extra) == source->packets_count);
    return OK;
}
