
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vlc_fourcc_t ;
typedef int video_format_t ;
struct TYPE_11__ {size_t i_pitch; size_t i_lines; int i_visible_lines; size_t i_visible_pitch; int * p_pixels; } ;
typedef TYPE_1__ plane_t ;
struct TYPE_12__ {int i_planes; TYPE_1__* p; } ;
typedef TYPE_2__ picture_t ;
typedef int image_handler_t ;
typedef int es_format_t ;
typedef int demux_t ;
struct TYPE_13__ {int * p_buffer; } ;
typedef TYPE_3__ block_t ;


 TYPE_3__* block_Alloc (size_t) ;
 int block_Release (TYPE_3__*) ;
 int es_format_Clean (int *) ;
 int es_format_InitFromVideo (int *,int *) ;
 int * image_HandlerCreate (int *) ;
 int image_HandlerDelete (int *) ;
 TYPE_2__* image_Read (int *,TYPE_3__*,int *,int *) ;
 int memcpy (int *,int *,size_t) ;
 int picture_Release (TYPE_2__*) ;
 int video_format_Clean (int *) ;
 int video_format_Init (int *,int ) ;

__attribute__((used)) static block_t *Decode(demux_t *demux,
                       es_format_t *fmt, vlc_fourcc_t chroma, block_t *data)
{
    image_handler_t *handler = image_HandlerCreate(demux);
    if (!handler) {
        block_Release(data);
        return ((void*)0);
    }

    video_format_t decoded;
    video_format_Init(&decoded, chroma);

    picture_t *image = image_Read(handler, data, fmt, &decoded);
    image_HandlerDelete(handler);

    if (!image)
        return ((void*)0);

    es_format_Clean(fmt);
    es_format_InitFromVideo(fmt, &decoded);
    video_format_Clean(&decoded);

    size_t size = 0;
    for (int i = 0; i < image->i_planes; i++)
        size += image->p[i].i_pitch * image->p[i].i_lines;

    data = block_Alloc(size);
    if (!data) {
        picture_Release(image);
        return ((void*)0);
    }

    size_t offset = 0;
    for (int i = 0; i < image->i_planes; i++) {
        const plane_t *src = &image->p[i];
        for (int y = 0; y < src->i_visible_lines; y++) {
            memcpy(&data->p_buffer[offset],
                   &src->p_pixels[y * src->i_pitch],
                   src->i_visible_pitch);
            offset += src->i_visible_pitch;
        }
    }

    picture_Release(image);
    return data;
}
