
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* synctex_node_t ;
struct TYPE_8__ {TYPE_2__* class; } ;
struct TYPE_7__ {TYPE_1__* scanner; } ;
struct TYPE_6__ {int unit; float y_offset; } ;


 int SYNCTEX_VERT (TYPE_3__*) ;

float synctex_node_visible_v(synctex_node_t node){
 if (!node) {
  return 0;
 }
 return SYNCTEX_VERT(node)*node->class->scanner->unit+node->class->scanner->y_offset;
}
