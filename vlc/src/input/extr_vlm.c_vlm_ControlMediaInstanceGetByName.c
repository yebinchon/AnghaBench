
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_instance; TYPE_2__** instance; } ;
typedef TYPE_1__ vlm_media_sys_t ;
struct TYPE_6__ {char* psz_name; } ;
typedef TYPE_2__ vlm_media_instance_sys_t ;


 int strcmp (char const*,char const*) ;

__attribute__((used)) static vlm_media_instance_sys_t *vlm_ControlMediaInstanceGetByName( vlm_media_sys_t *p_media, const char *psz_id )
{
    for( int i = 0; i < p_media->i_instance; i++ )
    {
        const char *psz = p_media->instance[i]->psz_name;
        if( ( psz == ((void*)0) && psz_id == ((void*)0) ) ||
            ( psz && psz_id && !strcmp( psz, psz_id ) ) )
            return p_media->instance[i];
    }
    return ((void*)0);
}
