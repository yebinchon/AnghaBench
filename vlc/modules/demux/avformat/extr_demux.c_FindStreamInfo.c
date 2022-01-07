
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ demux_t ;
struct TYPE_8__ {TYPE_4__* ic; } ;
typedef TYPE_2__ demux_sys_t ;
struct TYPE_9__ {unsigned int nb_streams; } ;
typedef int AVDictionary ;


 int AVUNERROR (int) ;
 int FreeUnclaimedOptions (TYPE_1__*,int **) ;
 int av_dict_copy (int **,int *,int ) ;
 int av_dict_free (int **) ;
 int avformat_find_stream_info (TYPE_4__*,int **) ;
 int msg_Warn (TYPE_1__*,char*,int ) ;
 int vlc_avcodec_lock () ;
 int vlc_avcodec_unlock () ;
 int vlc_strerror_c (int ) ;

__attribute__((used)) static void FindStreamInfo( demux_t *p_demux, AVDictionary *options )
{
    demux_sys_t *p_sys = p_demux->p_sys;
    unsigned nb_streams = p_sys->ic->nb_streams;

    AVDictionary *streamsoptions[nb_streams ? nb_streams : 1];

    streamsoptions[0] = options;
    for ( unsigned i = 1; i < nb_streams; i++ )
    {
        streamsoptions[i] = ((void*)0);
        if( streamsoptions[0] )
            av_dict_copy( &streamsoptions[i], streamsoptions[0], 0 );
    }

    vlc_avcodec_lock();
    int error = avformat_find_stream_info( p_sys->ic, streamsoptions );
    vlc_avcodec_unlock();

    FreeUnclaimedOptions( p_demux, &streamsoptions[0] );
    for ( unsigned i = 1; i < nb_streams; i++ ) {
        av_dict_free( &streamsoptions[i] );
    }

    if( error < 0 )
    {
        msg_Warn( p_demux, "Could not find stream info: %s",
                  vlc_strerror_c(AVUNERROR(error)) );
    }
}
