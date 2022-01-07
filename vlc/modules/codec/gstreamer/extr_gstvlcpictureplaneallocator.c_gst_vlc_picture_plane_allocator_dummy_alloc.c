
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * gsize ;
typedef int GstMemory ;
typedef int GstAllocator ;
typedef int GstAllocationParams ;


 int VLC_UNUSED (int *) ;

__attribute__((used)) static GstMemory* gst_vlc_picture_plane_allocator_dummy_alloc(
        GstAllocator* p_allocator, gsize i_size, GstAllocationParams *p_params )
{
    VLC_UNUSED( p_allocator );
    VLC_UNUSED( i_size );
    VLC_UNUSED( p_params );
    return ((void*)0);
}
