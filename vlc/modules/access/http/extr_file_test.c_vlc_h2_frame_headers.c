
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint_fast32_t ;
struct vlc_h2_frame {int dummy; } ;


 int assert (int) ;

struct vlc_h2_frame *
vlc_h2_frame_headers(uint_fast32_t id, uint_fast32_t mtu, bool eos,
                     unsigned count, const char *const tab[][2])
{
    (void) id; (void) mtu; (void) count, (void) tab;
    assert(!eos);
    return ((void*)0);
}
