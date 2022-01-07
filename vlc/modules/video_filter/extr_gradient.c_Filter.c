
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ filter_t ;
struct TYPE_9__ {int i_mode; int lock; } ;
typedef TYPE_2__ filter_sys_t ;


 int * CopyInfoAndRelease (int *,int *) ;

 int FilterEdge (TYPE_1__*,int *,int *) ;
 int FilterGradient (TYPE_1__*,int *,int *) ;
 int FilterHough (TYPE_1__*,int *,int *) ;


 int * filter_NewPicture (TYPE_1__*) ;
 int picture_Release (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static picture_t *Filter( filter_t *p_filter, picture_t *p_pic )
{
    picture_t *p_outpic;

    if( !p_pic ) return ((void*)0);

    p_outpic = filter_NewPicture( p_filter );
    if( !p_outpic )
    {
        picture_Release( p_pic );
        return ((void*)0);
    }

    filter_sys_t *p_sys = p_filter->p_sys;

    vlc_mutex_lock( &p_sys->lock );
    switch( p_sys->i_mode )
    {
        case 130:
            FilterEdge( p_filter, p_pic, p_outpic );
            break;

        case 129:
            FilterGradient( p_filter, p_pic, p_outpic );
            break;

        case 128:
            FilterHough( p_filter, p_pic, p_outpic );
            break;

        default:
            break;
    }
    vlc_mutex_unlock( &p_sys->lock );

    return CopyInfoAndRelease( p_outpic, p_pic );
}
