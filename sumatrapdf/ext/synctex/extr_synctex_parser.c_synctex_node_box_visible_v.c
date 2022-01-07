
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_3__* synctex_node_t ;
struct TYPE_11__ {TYPE_2__* class; } ;
struct TYPE_10__ {int type; TYPE_1__* scanner; } ;
struct TYPE_9__ {float unit; float y_offset; } ;


 TYPE_3__* SYNCTEX_PARENT (TYPE_3__*) ;
 float SYNCTEX_VERT (TYPE_3__*) ;
 float SYNCTEX_VERT_V (TYPE_3__*) ;

 int synctex_node_type_sheet ;




float synctex_node_box_visible_v(synctex_node_t node){
 if (!node) {
  return 0;
 }
 switch(node->class->type) {
  case 130:
  case 128:
  case 129:
   return SYNCTEX_VERT(node)*node->class->scanner->unit+node->class->scanner->y_offset;
  case 131:
result:
   return SYNCTEX_VERT_V(node)*node->class->scanner->unit+node->class->scanner->y_offset;
 }
 if ((node = SYNCTEX_PARENT(node)) && (node->class->type != synctex_node_type_sheet)) {
  goto result;
 }
 return 0;
}
