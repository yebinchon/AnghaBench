
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* location; struct TYPE_4__* trackNum; struct TYPE_4__* genre; struct TYPE_4__* album; struct TYPE_4__* artist; struct TYPE_4__* name; } ;
typedef TYPE_1__ track_elem_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void free_track( track_elem_t *p_track )
{
    if ( !p_track )
        return;

    free( p_track->name );
    free( p_track->artist );
    free( p_track->album );
    free( p_track->genre );
    free( p_track->trackNum );
    free( p_track->location );
    free( p_track );
}
