
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int i_height; int i_width; } ;
struct TYPE_10__ {TYPE_1__ format; } ;
typedef TYPE_2__ picture_t ;
typedef int filter_t ;
struct TYPE_11__ {scalar_t__ fourcc; } ;
typedef TYPE_3__ VAImageFormat ;
typedef int VAImage ;
typedef int VADisplay ;


 scalar_t__ VA_FOURCC_NV12 ;
 scalar_t__ VA_FOURCC_P010 ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_OBJECT (int *) ;
 int VLC_SUCCESS ;
 int free (TYPE_3__*) ;
 scalar_t__ unlikely (int ) ;
 int vaMaxNumImageFormats (int ) ;
 scalar_t__ vaQueryImageFormats (int ,TYPE_3__*,int*) ;
 TYPE_3__* vlc_alloc (int,int) ;
 int vlc_vaapi_CreateImage (int ,int ,TYPE_3__*,int ,int ,int *) ;

__attribute__((used)) static int CreateFallbackImage(filter_t *filter, picture_t *src_pic,
                               VADisplay va_dpy, VAImage *image_fallback)
{
    int count = vaMaxNumImageFormats(va_dpy);

    VAImageFormat *fmts = vlc_alloc(count, sizeof (*fmts));
    if (unlikely(fmts == ((void*)0)))
        return VLC_ENOMEM;

    if (vaQueryImageFormats(va_dpy, fmts, &count))
    {
        free(fmts);
        return VLC_EGENERIC;
    }

    int i;
    for (i = 0; i < count; i++)
        if (fmts[i].fourcc == VA_FOURCC_NV12
         || fmts[i].fourcc == VA_FOURCC_P010)
            break;

    int ret;
    if ((fmts[i].fourcc == VA_FOURCC_NV12 || fmts[i].fourcc == VA_FOURCC_P010)
     && !vlc_vaapi_CreateImage(VLC_OBJECT(filter), va_dpy, &fmts[i],
                               src_pic->format.i_width, src_pic->format.i_height,
                               image_fallback))
        ret = VLC_SUCCESS;
    else
        ret = VLC_EGENERIC;

    free(fmts);

    return ret;
}
