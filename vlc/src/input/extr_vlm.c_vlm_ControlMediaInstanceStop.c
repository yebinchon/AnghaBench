
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlm_t ;
typedef int vlm_media_sys_t ;
typedef int vlm_media_instance_sys_t ;
typedef int int64_t ;


 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int * vlm_ControlMediaGetById (int *,int ) ;
 int * vlm_ControlMediaInstanceGetByName (int *,char const*) ;
 int vlm_MediaInstanceDelete (int *,int ,int *,int *) ;

__attribute__((used)) static int vlm_ControlMediaInstanceStop( vlm_t *p_vlm, int64_t id, const char *psz_id )
{
    vlm_media_sys_t *p_media = vlm_ControlMediaGetById( p_vlm, id );
    vlm_media_instance_sys_t *p_instance;

    if( !p_media )
        return VLC_EGENERIC;

    p_instance = vlm_ControlMediaInstanceGetByName( p_media, psz_id );
    if( !p_instance )
        return VLC_EGENERIC;

    vlm_MediaInstanceDelete( p_vlm, id, p_instance, p_media );

    return VLC_SUCCESS;
}
