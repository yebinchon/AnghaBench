
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ duration; int * location; int * trackNum; int * genre; int * album; int * artist; int * name; } ;
typedef TYPE_1__ track_elem_t ;


 scalar_t__ likely (TYPE_1__*) ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static track_elem_t *new_track()
{
    track_elem_t *p_track = malloc( sizeof *p_track );
    if( likely( p_track ) )
    {
        p_track->name = ((void*)0);
        p_track->artist = ((void*)0);
        p_track->album = ((void*)0);
        p_track->genre = ((void*)0);
        p_track->trackNum = ((void*)0);
        p_track->location = ((void*)0);
        p_track->duration = 0;
    }
    return p_track;
}
