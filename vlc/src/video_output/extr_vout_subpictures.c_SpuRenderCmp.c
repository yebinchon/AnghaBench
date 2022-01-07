
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_start; int i_order; int i_channel; int b_absolute; } ;
typedef TYPE_1__ subpicture_t ;
struct TYPE_4__ {TYPE_1__* subpic; } ;
typedef TYPE_2__ spu_render_entry_t ;


 int IntegerCmp (int,int) ;
 int SSizeCmp (int ,int ) ;

__attribute__((used)) static int SpuRenderCmp(const void *s0, const void *s1)
{
    const spu_render_entry_t *render_entry0 = s0;
    const spu_render_entry_t *render_entry1 = s1;
    subpicture_t *subpic0 = render_entry0->subpic;
    subpicture_t *subpic1 = render_entry1->subpic;
    int r;

    r = IntegerCmp(!subpic0->b_absolute, !subpic1->b_absolute);
    if (!r)
        r = IntegerCmp(subpic0->i_start, subpic1->i_start);
    if (!r)
        r = SSizeCmp(subpic0->i_channel, subpic1->i_channel);
    if (!r)
        r = IntegerCmp(subpic0->i_order, subpic1->i_order);
    return r;
}
