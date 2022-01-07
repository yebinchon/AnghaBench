
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sway_container {struct sway_container* parent; } ;
struct TYPE_4__ {int length; } ;
typedef TYPE_1__ list_t ;
typedef enum wlr_edges { ____Placeholder_wlr_edges } wlr_edges ;
typedef enum sway_container_layout { ____Placeholder_sway_container_layout } sway_container_layout ;


 int L_HORIZ ;
 int L_NONE ;
 int L_VERT ;





 TYPE_1__* container_get_siblings (struct sway_container*) ;
 int container_parent_layout (struct sway_container*) ;
 int list_find (TYPE_1__*,struct sway_container*) ;
 int sway_assert (int,char*) ;

__attribute__((used)) static bool edge_is_external(struct sway_container *cont, enum wlr_edges edge) {
 enum sway_container_layout layout = L_NONE;
 switch (edge) {
 case 128:
 case 132:
  layout = L_VERT;
  break;
 case 131:
 case 129:
  layout = L_HORIZ;
  break;
 case 130:
  sway_assert(0, "Never reached");
  return 0;
 }



 while (cont) {
  if (container_parent_layout(cont) == layout) {
   list_t *siblings = container_get_siblings(cont);
   int index = list_find(siblings, cont);
   if (index > 0 && (edge == 131 || edge == 128)) {
    return 0;
   }
   if (index < siblings->length - 1 &&
     (edge == 129 || edge == 132)) {
    return 0;
   }
  }
  cont = cont->parent;
 }
 return 1;
}
