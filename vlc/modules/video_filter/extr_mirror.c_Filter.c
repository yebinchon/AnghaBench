
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int i_planes; } ;
typedef TYPE_1__ picture_t ;
struct TYPE_19__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ filter_t ;
struct TYPE_20__ {int i_direction; int i_split; } ;
typedef TYPE_3__ filter_sys_t ;


 TYPE_1__* CopyInfoAndRelease (TYPE_1__*,TYPE_1__*) ;
 int HorizontalMirror (TYPE_1__*,TYPE_1__*,int,int) ;
 int VerticalMirror (TYPE_1__*,TYPE_1__*,int,int) ;
 int atomic_load (int *) ;
 TYPE_1__* filter_NewPicture (TYPE_2__*) ;
 int msg_Warn (TYPE_2__*,char*) ;
 int picture_Release (TYPE_1__*) ;

__attribute__((used)) static picture_t *Filter( filter_t *p_filter, picture_t *p_pic )
{
    picture_t *p_outpic;
    bool b_vertical_split, b_left_to_right;

    if( !p_pic ) return ((void*)0);

    filter_sys_t *p_sys = p_filter->p_sys;
    b_vertical_split = !atomic_load( &p_sys->i_split );
    b_left_to_right = !atomic_load( &p_sys->i_direction );

    p_outpic = filter_NewPicture( p_filter );
    if( !p_outpic )
    {
        msg_Warn( p_filter, "can't get output picture" );
        picture_Release( p_pic );
        return ((void*)0);
    }

    for( int i_index = 0 ; i_index < p_pic->i_planes ; i_index++ )
    {
        if ( b_vertical_split )
            VerticalMirror( p_pic, p_outpic, i_index, b_left_to_right );
        else
            HorizontalMirror( p_pic, p_outpic, i_index, b_left_to_right );
    }

    return CopyInfoAndRelease( p_outpic, p_pic );
}
