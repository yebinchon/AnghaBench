
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gssize ;
typedef int GstMemory ;


 int VLC_UNUSED (int *) ;

__attribute__((used)) static GstMemory* gst_vlc_picture_plane_copy(
        GstMemory *p_mem, gssize i_offset, gssize i_size )
{
    VLC_UNUSED( p_mem );
    VLC_UNUSED( i_offset );
    VLC_UNUSED( i_size );
    return ((void*)0);
}
