
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ stream_t ;
struct TYPE_7__ {int cur_seekpoint; scalar_t__ offset; scalar_t__* offsets; TYPE_1__* p_marks; } ;
typedef TYPE_3__ access_sys_t ;
struct TYPE_5__ {int i_seekpoint; } ;



__attribute__((used)) static void FindSeekpoint( stream_t *p_access )
{
    access_sys_t *p_sys = p_access->p_sys;
    if( !p_sys->p_marks )
        return;

    int new_seekpoint = p_sys->cur_seekpoint;
    if( p_sys->offset < p_sys->offsets[p_sys->cur_seekpoint] )
    {

        new_seekpoint = 0;
    }


    while( new_seekpoint + 1 < p_sys->p_marks->i_seekpoint &&
        p_sys->offset >= p_sys->offsets[new_seekpoint + 1] )
    {
        new_seekpoint++;
    }

    p_sys->cur_seekpoint = new_seekpoint;
}
