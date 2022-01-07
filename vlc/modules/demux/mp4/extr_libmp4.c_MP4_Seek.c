
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int stream_t ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ int64_t ;


 int STREAM_CAN_SEEK ;
 int VLC_EGENERIC ;
 scalar_t__ VLC_SUCCESS ;
 scalar_t__ vlc_stream_Control (int *,int ,int*) ;
 scalar_t__ vlc_stream_Read (int *,int *,size_t) ;
 int vlc_stream_Seek (int *,scalar_t__) ;
 scalar_t__ vlc_stream_Tell (int *) ;

int MP4_Seek( stream_t *p_stream, uint64_t i_pos )
{
    bool b_canseek = 0;
    if ( vlc_stream_Control( p_stream, STREAM_CAN_SEEK, &b_canseek ) != VLC_SUCCESS ||
         b_canseek )
    {

        return vlc_stream_Seek( p_stream, i_pos );
    }


    int64_t i_current_pos = vlc_stream_Tell( p_stream );
    if ( i_current_pos < 0 || i_pos < (uint64_t)i_current_pos )
        return VLC_EGENERIC;

    size_t i_toread = i_pos - i_current_pos;
    if( i_toread == 0 )
        return VLC_SUCCESS;
    else if( i_toread > (1<<17) )
        return VLC_EGENERIC;

    if( vlc_stream_Read( p_stream, ((void*)0), i_toread ) != (ssize_t)i_toread )
        return VLC_EGENERIC;
    return VLC_SUCCESS;
}
