
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int vlc_fourcc_t ;
struct TYPE_8__ {int date; } ;
typedef TYPE_1__ picture_t ;
typedef int libvlc_picture_type_t ;
struct TYPE_9__ {int type; int fmt; int converted; int time; int rc; } ;
typedef TYPE_2__ libvlc_picture_t ;


 int MS_FROM_VLC_TICK (int ) ;
 int VLC_CODEC_ARGB ;
 int VLC_CODEC_JPEG ;
 int VLC_CODEC_PNG ;
 scalar_t__ VLC_SUCCESS ;
 int free (TYPE_2__*) ;



 TYPE_2__* malloc (int) ;
 scalar_t__ picture_Export (int *,int *,int *,TYPE_1__*,int ,unsigned int,unsigned int,int) ;
 scalar_t__ unlikely (int ) ;
 int vlc_assert_unreachable () ;
 int vlc_atomic_rc_init (int *) ;

libvlc_picture_t* libvlc_picture_new( vlc_object_t* p_obj, picture_t* input,
                                      libvlc_picture_type_t type,
                                      unsigned int width, unsigned int height,
                                      bool crop )
{
    libvlc_picture_t *pic = malloc( sizeof( *pic ) );
    if ( unlikely( pic == ((void*)0) ) )
        return ((void*)0);
    vlc_atomic_rc_init( &pic->rc );
    pic->type = type;
    pic->time = MS_FROM_VLC_TICK( input->date );
    vlc_fourcc_t format;
    switch ( type )
    {
        case 130:
            format = VLC_CODEC_ARGB;
            break;
        case 129:
            format = VLC_CODEC_JPEG;
            break;
        case 128:
            format = VLC_CODEC_PNG;
            break;
        default:
            vlc_assert_unreachable();
    }
    if ( picture_Export( p_obj, &pic->converted, &pic->fmt,
                         input, format, width, height, crop ) != VLC_SUCCESS )
    {
        free( pic );
        return ((void*)0);
    }

    return pic;
}
