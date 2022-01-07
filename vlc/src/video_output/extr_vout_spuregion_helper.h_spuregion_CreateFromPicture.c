
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int no_interact; struct vlc_logger* logger; } ;
typedef TYPE_1__ vlc_object_t ;
typedef int video_format_t ;
struct TYPE_8__ {int * p_picture; } ;
typedef TYPE_2__ subpicture_region_t ;
struct vlc_logger {int dummy; } ;
typedef int picture_t ;
typedef int image_handler_t ;


 int * image_HandlerCreate (TYPE_1__*) ;
 int image_HandlerDelete (int *) ;
 int * image_ReadUrl (int *,char const*,int *) ;
 int picture_Release (int *) ;
 TYPE_2__* subpicture_region_New (int *) ;

__attribute__((used)) static inline subpicture_region_t *
spuregion_CreateFromPicture( vlc_object_t *p_this, video_format_t *p_fmt,
                             const char *psz_uri )
{
    picture_t *p_pic = ((void*)0);
    struct vlc_logger *logger = p_this->logger;
    bool no_interact = p_this->no_interact;
    p_this->logger = ((void*)0);
    p_this->no_interact = 1;
    image_handler_t *p_image = image_HandlerCreate( p_this );
    if( p_image )
    {
        p_pic = image_ReadUrl( p_image, psz_uri, p_fmt );
        image_HandlerDelete( p_image );
    }
    p_this->no_interact = no_interact;
    p_this->logger = logger;

    if(!p_pic)
        return ((void*)0);

    subpicture_region_t *region = subpicture_region_New(p_fmt);
    if (!region)
    {
        picture_Release( p_pic );
        return ((void*)0);
    }

    picture_Release( region->p_picture );
    region->p_picture = p_pic;

    return region;
}
