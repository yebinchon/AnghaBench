
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;
typedef int demux_t ;


 int EA52CheckSyncProbe ;
 int GenericFormatCheck ;
 int GenericProbe (int *,int *,char const**,int ,scalar_t__,scalar_t__,int ,int,int const*,int ) ;
 scalar_t__ VLC_A52_MIN_HEADER_SIZE ;
 int const WAVE_FORMAT_A52 ;
 int const WAVE_FORMAT_PCM ;
 int const WAVE_FORMAT_UNKNOWN ;
 int WAV_EXTRA_PROBE_SIZE ;

__attribute__((used)) static int EA52Probe( demux_t *p_demux, uint64_t *pi_offset )
{
    const char *ppsz_name[] = { "eac3", ((void*)0) };
    const uint16_t rgi_twocc[] = { WAVE_FORMAT_PCM, WAVE_FORMAT_A52, WAVE_FORMAT_UNKNOWN };

    return GenericProbe( p_demux, pi_offset, ppsz_name, EA52CheckSyncProbe,
                         VLC_A52_MIN_HEADER_SIZE,
                         1920 + VLC_A52_MIN_HEADER_SIZE + 1,
                         WAV_EXTRA_PROBE_SIZE,
                         1, rgi_twocc, GenericFormatCheck );
}
