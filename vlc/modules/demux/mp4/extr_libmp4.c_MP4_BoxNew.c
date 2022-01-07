
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int i_type; } ;
typedef TYPE_1__ MP4_Box_t ;


 TYPE_1__* calloc (int,int) ;
 scalar_t__ likely (int ) ;

MP4_Box_t * MP4_BoxNew( uint32_t i_type )
{
    MP4_Box_t *p_box = calloc( 1, sizeof( MP4_Box_t ) );
    if( likely( p_box != ((void*)0) ) )
    {
        p_box->i_type = i_type;
    }
    return p_box;
}
