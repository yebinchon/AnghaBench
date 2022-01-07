
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;
typedef int demux_t ;


 int BASE_PROBE_SIZE ;
 int GenericFormatCheck ;
 int GenericProbe (int *,int *,char const**,int ,int,int ,int ,int,int const*,int ) ;
 int ThdCheckSync ;
 int const WAVE_FORMAT_PCM ;
 int const WAVE_FORMAT_UNKNOWN ;
 int WAV_EXTRA_PROBE_SIZE ;

__attribute__((used)) static int ThdProbe( demux_t *p_demux, uint64_t *pi_offset )
{
    const char *ppsz_name[] = { "thd", ((void*)0) };
    const uint16_t rgi_twocc[] = { WAVE_FORMAT_PCM, WAVE_FORMAT_UNKNOWN };

    return GenericProbe( p_demux, pi_offset, ppsz_name, ThdCheckSync,
                         4+28+16*4, BASE_PROBE_SIZE, WAV_EXTRA_PROBE_SIZE,
                         0, rgi_twocc, GenericFormatCheck );
}
