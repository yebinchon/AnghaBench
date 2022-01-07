
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_format_t ;
typedef int vdp_t ;
typedef int picture_t ;
typedef int picture_pool_t ;
typedef int VdpRGBAFormat ;


 int picture_Release (int *) ;
 int * picture_pool_New (unsigned int,int **) ;
 scalar_t__ unlikely (int ) ;
 int * vlc_vdp_output_surface_create (int *,int ,int const*) ;

picture_pool_t *vlc_vdp_output_pool_create(vdp_t *vdp, VdpRGBAFormat rgb_fmt,
                                           const video_format_t *restrict fmt,
                                           unsigned requested_count)
{
    picture_t *pics[requested_count];
    unsigned count = 0;

    while (count < requested_count)
    {
        pics[count] = vlc_vdp_output_surface_create(vdp, rgb_fmt, fmt);
        if (pics[count] == ((void*)0))
            break;
        count++;
    }

    if (count == 0)
        return ((void*)0);

    picture_pool_t *pool = picture_pool_New(count, pics);
    if (unlikely(pool == ((void*)0)))
        while (count > 0)
            picture_Release(pics[--count]);
    return pool;
}
