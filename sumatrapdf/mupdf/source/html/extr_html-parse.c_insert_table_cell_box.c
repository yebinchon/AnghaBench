
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ type; struct TYPE_9__* up; } ;
typedef TYPE_1__ fz_html_box ;
typedef int fz_context ;


 int BOX_TABLE_CELL ;
 scalar_t__ BOX_TABLE_ROW ;
 int fz_warn (int *,char*) ;
 int insert_block_box (int *,TYPE_1__*,TYPE_1__*) ;
 int insert_box (int *,TYPE_1__*,int ,TYPE_1__*) ;

__attribute__((used)) static fz_html_box *insert_table_cell_box(fz_context *ctx, fz_html_box *box, fz_html_box *top)
{
 fz_html_box *tr = top;
 while (tr && tr->type != BOX_TABLE_ROW)
  tr = tr->up;
 if (tr)
 {
  insert_box(ctx, box, BOX_TABLE_CELL, tr);
  return tr;
 }
 fz_warn(ctx, "table-cell not inside table-row element");
 insert_block_box(ctx, box, top);
 return top;
}
