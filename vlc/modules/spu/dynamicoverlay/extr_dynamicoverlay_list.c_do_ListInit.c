
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int overlay_t ;
struct TYPE_3__ {int * pp_head; int * pp_tail; } ;
typedef TYPE_1__ list_t ;


 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int * calloc (int,int) ;

int do_ListInit( list_t *p_list )
{
    p_list->pp_head = calloc( 16, sizeof( overlay_t * ) );
    if( p_list->pp_head == ((void*)0) )
        return VLC_ENOMEM;

    p_list->pp_tail = p_list->pp_head + 16;
    return VLC_SUCCESS;
}
