
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ i_chroma; } ;
struct TYPE_7__ {TYPE_1__ format; scalar_t__ b_active; } ;
typedef TYPE_2__ overlay_t ;
struct TYPE_8__ {TYPE_2__** pp_tail; TYPE_2__** pp_head; } ;
typedef TYPE_3__ list_t ;


 scalar_t__ VLC_FOURCC (char,char,char,char) ;

overlay_t *ListWalk( list_t *p_list )
{
    static overlay_t **pp_cur = ((void*)0);

    if( pp_cur == ((void*)0) )
        pp_cur = p_list->pp_head;
    else
        pp_cur = pp_cur + 1;

    for( ; pp_cur < p_list->pp_tail; ++pp_cur )
    {
        if( ( *pp_cur != ((void*)0) ) &&
            ( (*pp_cur)->b_active )&&
            ( (*pp_cur)->format.i_chroma != VLC_FOURCC( '\0','\0','\0','\0') ) )
        {
            return *pp_cur;
        }
    }
    pp_cur = ((void*)0);
    return ((void*)0);
}
