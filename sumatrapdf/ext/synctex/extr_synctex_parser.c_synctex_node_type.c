
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int synctex_node_type_t ;
typedef TYPE_2__* synctex_node_t ;
struct TYPE_5__ {TYPE_1__* class; } ;
struct TYPE_4__ {int type; } ;


 int synctex_node_type_error ;

synctex_node_type_t synctex_node_type(synctex_node_t node) {
 if (node) {
  return (((node)->class))->type;
 }
 return synctex_node_type_error;
}
