
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int i_default_sample_size; int i_default_sample_duration; } ;
struct TYPE_4__ {int i_flags; int i_track_ID; int i_default_sample_size; int i_default_sample_duration; } ;
typedef int MP4_Box_t ;
typedef TYPE_1__ MP4_Box_data_tfhd_t ;


 TYPE_3__* BOXDATA (int const*) ;
 int * MP4_GetTrexByTrackID (int *,int ) ;
 int MP4_TFHD_DFLT_SAMPLE_DURATION ;
 int MP4_TFHD_DFLT_SAMPLE_SIZE ;

__attribute__((used)) static void MP4_GetDefaultSizeAndDuration( MP4_Box_t *p_moov,
                                           const MP4_Box_data_tfhd_t *p_tfhd_data,
                                           uint32_t *pi_default_size,
                                           uint32_t *pi_default_duration )
{
    if( p_tfhd_data->i_flags & MP4_TFHD_DFLT_SAMPLE_DURATION )
        *pi_default_duration = p_tfhd_data->i_default_sample_duration;

    if( p_tfhd_data->i_flags & MP4_TFHD_DFLT_SAMPLE_SIZE )
        *pi_default_size = p_tfhd_data->i_default_sample_size;

    if( !*pi_default_duration || !*pi_default_size )
    {
        const MP4_Box_t *p_trex = MP4_GetTrexByTrackID( p_moov, p_tfhd_data->i_track_ID );
        if ( p_trex )
        {
            if ( !*pi_default_duration )
                *pi_default_duration = BOXDATA(p_trex)->i_default_sample_duration;
            if ( !*pi_default_size )
                *pi_default_size = BOXDATA(p_trex)->i_default_sample_size;
        }
    }
}
