
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_fourcc_t ;
typedef int uint8_t ;
typedef int stream_t ;
typedef size_t ssize_t ;
struct TYPE_4__ {size_t marker_size; int codec; int marker; scalar_t__ (* detect ) (int *) ;} ;
typedef TYPE_1__ image_format_t ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int assert (int) ;
 TYPE_1__* formats ;
 scalar_t__ memcmp (int const*,int ,size_t) ;
 scalar_t__ stub1 (int *) ;
 size_t vlc_stream_Peek (int *,int const**,size_t) ;
 scalar_t__ vlc_stream_Seek (int *,int ) ;

__attribute__((used)) static vlc_fourcc_t Detect(stream_t *s)
{
    const uint8_t *peek;
    size_t peek_size = 0;

    for (size_t i = 0; i < ARRAY_SIZE(formats); i++) {
        const image_format_t *img = &formats[i];

        if (img->detect != ((void*)0)) {
            if (img->detect(s))
                return img->codec;

            if (vlc_stream_Seek(s, 0))
               return 0;


            peek_size = 0;
            continue;
        }

        if (peek_size < img->marker_size) {
            ssize_t val = vlc_stream_Peek(s, &peek, img->marker_size);
            if (val < 0)
                continue;
            peek_size = val;
        }

        assert(img->marker_size > 0);

        if (peek_size >= img->marker_size
         && memcmp(peek, img->marker, img->marker_size) == 0)
            return img->codec;
    }
    return 0;
}
