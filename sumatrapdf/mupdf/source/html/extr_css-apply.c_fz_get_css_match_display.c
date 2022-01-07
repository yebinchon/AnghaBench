
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ fz_css_value ;
typedef int fz_css_match ;


 int DIS_BLOCK ;
 int DIS_INLINE ;
 int DIS_INLINE_BLOCK ;
 int DIS_LIST_ITEM ;
 int DIS_NONE ;
 int DIS_TABLE ;
 int DIS_TABLE_CELL ;
 int DIS_TABLE_ROW ;
 int strcmp (int ,char*) ;
 TYPE_1__* value_from_property (int *,char*) ;

int
fz_get_css_match_display(fz_css_match *match)
{
 fz_css_value *value = value_from_property(match, "display");
 if (value)
 {
  if (!strcmp(value->data, "none"))
   return DIS_NONE;
  if (!strcmp(value->data, "inline"))
   return DIS_INLINE;
  if (!strcmp(value->data, "block"))
   return DIS_BLOCK;
  if (!strcmp(value->data, "list-item"))
   return DIS_LIST_ITEM;
  if (!strcmp(value->data, "inline-block"))
   return DIS_INLINE_BLOCK;
  if (!strcmp(value->data, "table"))
   return DIS_TABLE;
  if (!strcmp(value->data, "table-row"))
   return DIS_TABLE_ROW;
  if (!strcmp(value->data, "table-cell"))
   return DIS_TABLE_CELL;
 }
 return DIS_INLINE;
}
