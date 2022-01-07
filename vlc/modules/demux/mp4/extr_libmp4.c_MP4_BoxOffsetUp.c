
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {struct TYPE_3__* p_next; struct TYPE_3__* p_first; int i_pos; } ;
typedef TYPE_1__ MP4_Box_t ;



__attribute__((used)) static void MP4_BoxOffsetUp( MP4_Box_t *p_box, uint64_t i_offset )
{
    while(p_box)
    {
        p_box->i_pos += i_offset;
        MP4_BoxOffsetUp( p_box->p_first, i_offset );
        p_box = p_box->p_next;
    }
}
