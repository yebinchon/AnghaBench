
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* psz_name; } ;
typedef TYPE_1__ vlc_ml_genre_t ;


 int free (TYPE_1__*) ;

void vlc_ml_genre_release( vlc_ml_genre_t* p_genre )
{
    if ( p_genre == ((void*)0) )
        return;
    free( p_genre->psz_name );
    free( p_genre );
}
