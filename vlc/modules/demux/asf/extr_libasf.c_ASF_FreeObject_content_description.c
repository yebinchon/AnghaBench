
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int psz_rating; int psz_description; int psz_copyright; int psz_artist; int psz_title; } ;
struct TYPE_4__ {TYPE_2__ content_description; } ;
typedef TYPE_1__ asf_object_t ;
typedef TYPE_2__ asf_object_content_description_t ;


 int FREENULL (int ) ;

__attribute__((used)) static void ASF_FreeObject_content_description( asf_object_t *p_obj)
{
    asf_object_content_description_t *p_cd = &p_obj->content_description;

    FREENULL( p_cd->psz_title );
    FREENULL( p_cd->psz_artist );
    FREENULL( p_cd->psz_copyright );
    FREENULL( p_cd->psz_description );
    FREENULL( p_cd->psz_rating );
}
