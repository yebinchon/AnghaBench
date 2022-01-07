
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ fz_html_box ;


 scalar_t__ BOX_BLOCK ;
 scalar_t__ BOX_TABLE ;
 scalar_t__ BOX_TABLE_CELL ;
 scalar_t__ BOX_TABLE_ROW ;

__attribute__((used)) static inline int
fz_html_box_has_boxes(fz_html_box *box)
{
 return (box->type == BOX_BLOCK || box->type == BOX_TABLE || box->type == BOX_TABLE_ROW || box->type == BOX_TABLE_CELL);
}
