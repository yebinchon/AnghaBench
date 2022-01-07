
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hxxx_helper_nal {int * b; } ;
struct TYPE_2__ {scalar_t__ i_sps_count; size_t i_current_sps; struct hxxx_helper_nal* sps_list; } ;
struct hxxx_helper {TYPE_1__ h264; } ;


 int assert (int ) ;

__attribute__((used)) static const struct hxxx_helper_nal *
h264_helper_get_current_sps(const struct hxxx_helper *hh)
{
    if (hh->h264.i_sps_count == 0)
        return ((void*)0);

    const struct hxxx_helper_nal *hsps =
        &hh->h264.sps_list[hh->h264.i_current_sps];
    assert(hsps->b != ((void*)0));
    return hsps;
}
