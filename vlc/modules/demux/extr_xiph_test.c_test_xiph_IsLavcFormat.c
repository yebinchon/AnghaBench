
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct params_s {scalar_t__ lavc; int codec; } ;


 int EXPECT (int) ;
 int OK ;
 scalar_t__ xiph_IsLavcFormat (int const*,size_t,int ) ;

__attribute__((used)) static int test_xiph_IsLavcFormat(const char *run,
                 const uint8_t *p_extra, size_t i_extra,
                 const struct params_s *source)
{
    EXPECT(xiph_IsLavcFormat(p_extra, i_extra, source->codec) == source->lavc);
    return OK;
}
