
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * style; int markup_dir; int * flow_head; int ** flow_tail; int * next; int * down; int * up; scalar_t__ b; scalar_t__ w; scalar_t__ y; scalar_t__ x; int type; } ;
typedef TYPE_1__ fz_html_box ;
typedef int fz_context ;
typedef int fz_bidi_direction ;


 int BOX_BLOCK ;

__attribute__((used)) static void init_box(fz_context *ctx, fz_html_box *box, fz_bidi_direction markup_dir)
{
 box->type = BOX_BLOCK;
 box->x = box->y = 0;
 box->w = box->b = 0;

 box->up = ((void*)0);
 box->down = ((void*)0);
 box->next = ((void*)0);

 box->flow_head = ((void*)0);
 box->flow_tail = &box->flow_head;
 box->markup_dir = markup_dir;
 box->style = ((void*)0);
}
