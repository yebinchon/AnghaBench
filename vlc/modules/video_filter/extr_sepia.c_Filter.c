
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_6__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_7__ {int (* pf_sepia ) (int *,int *,int) ;int i_intensity; } ;
typedef TYPE_2__ filter_sys_t ;


 int * CopyInfoAndRelease (int *,int *) ;
 int atomic_load (int *) ;
 int * filter_NewPicture (TYPE_1__*) ;
 int msg_Warn (TYPE_1__*,char*) ;
 int picture_Release (int *) ;
 int stub1 (int *,int *,int) ;

__attribute__((used)) static picture_t *Filter( filter_t *p_filter, picture_t *p_pic )
{
    picture_t *p_outpic;

    if( !p_pic ) return ((void*)0);

    filter_sys_t *p_sys = p_filter->p_sys;
    int intensity = atomic_load( &p_sys->i_intensity );

    p_outpic = filter_NewPicture( p_filter );
    if( !p_outpic )
    {
        msg_Warn( p_filter, "can't get output picture" );
        picture_Release( p_pic );
        return ((void*)0);
    }

    p_sys->pf_sepia( p_pic, p_outpic, intensity );

    return CopyInfoAndRelease( p_outpic, p_pic );
}
