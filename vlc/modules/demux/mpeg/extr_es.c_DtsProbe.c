
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;
typedef int demux_t ;


 int DtsCheckSync ;
 int GenericProbe (int *,int *,char const**,int ,scalar_t__,scalar_t__,int ,int,int const*,int *) ;
 scalar_t__ VLC_DTS_HEADER_SIZE ;
 int const WAVE_FORMAT_DTS ;
 int const WAVE_FORMAT_PCM ;
 int const WAVE_FORMAT_UNKNOWN ;
 int WAV_EXTRA_PROBE_SIZE ;

__attribute__((used)) static int DtsProbe( demux_t *p_demux, uint64_t *pi_offset )
{
    const char *ppsz_name[] = { "dts", ((void*)0) };
    const uint16_t rgi_twocc[] = { WAVE_FORMAT_PCM, WAVE_FORMAT_DTS, WAVE_FORMAT_UNKNOWN };

    return GenericProbe( p_demux, pi_offset, ppsz_name, DtsCheckSync,
                         VLC_DTS_HEADER_SIZE,
                         16384 + VLC_DTS_HEADER_SIZE + 1,
                         WAV_EXTRA_PROBE_SIZE,
                         0, rgi_twocc, ((void*)0) );
}
