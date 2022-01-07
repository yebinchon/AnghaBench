
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;
typedef int MP4_Box_t ;


 int VLC_UNUSED (int *) ;
 int msg_Warn (int *,char*) ;

__attribute__((used)) static int MP4_ReadBox_drms( stream_t *p_stream, MP4_Box_t *p_box )
{
    VLC_UNUSED(p_box);



    msg_Warn( p_stream, "DRM protected streams are not supported." );
    return 1;
}
