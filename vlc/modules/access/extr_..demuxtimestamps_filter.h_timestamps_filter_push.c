
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ vlc_tick_t ;
struct TYPE_4__ {scalar_t__ i_packet; } ;
struct timestamps_filter_s {scalar_t__ sequence_offset; scalar_t__ contiguous_last; TYPE_1__ mva; } ;
struct mva_packet_s {scalar_t__ dts; int diff; } ;
typedef int int64_t ;


 int CLOCK_FREQ ;
 scalar_t__ MVA_PACKETS ;
 int VLC_UNUSED (char const*) ;
 int const llabs (scalar_t__) ;
 int mva_add (TYPE_1__*,scalar_t__,scalar_t__) ;
 int mva_get (TYPE_1__*) ;
 struct mva_packet_s* mva_getLastPacket (TYPE_1__*) ;
 int printf (char*,char const*,scalar_t__,...) ;

__attribute__((used)) static void timestamps_filter_push(const char *s, struct timestamps_filter_s *tf,
                                   vlc_tick_t i_dts, vlc_tick_t i_length,
                                   bool b_discontinuity, bool b_contiguous)
{
    if(i_dts == 0 && i_length == 0)
        return;

    struct mva_packet_s *prev = mva_getLastPacket(&tf->mva);
    if (prev)
    {
        if(prev->dts == i_dts)
            return;

        if(b_contiguous)
        {
            const int64_t i_maxdiff = tf->mva.i_packet > MVA_PACKETS ? mva_get(&tf->mva) * 2 : CLOCK_FREQ;
            if(llabs(i_dts - prev->dts) > i_maxdiff || b_discontinuity)
            {
                prev->diff = mva_get(&tf->mva);
                tf->sequence_offset = tf->contiguous_last - i_dts + prev->diff;



            }
            else prev->diff = i_dts - prev->dts;
        }
        VLC_UNUSED(s);

    }

    tf->contiguous_last = i_dts + tf->sequence_offset;

    mva_add(&tf->mva, i_dts, i_length);
}
