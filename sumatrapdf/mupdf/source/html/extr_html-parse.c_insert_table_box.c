
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int type; } ;
typedef TYPE_1__ fz_html_box ;
typedef int fz_context ;


 int BOX_TABLE ;
 TYPE_1__* insert_block_box (int *,TYPE_1__*,TYPE_1__*) ;

__attribute__((used)) static fz_html_box *insert_table_box(fz_context *ctx, fz_html_box *box, fz_html_box *top)
{
 top = insert_block_box(ctx, box, top);
 box->type = BOX_TABLE;
 return top;
}
