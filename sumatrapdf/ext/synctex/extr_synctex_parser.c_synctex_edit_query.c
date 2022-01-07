
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_1__* synctex_scanner_t ;
struct TYPE_14__ {float h; float v; int member_1; int member_0; } ;
typedef TYPE_2__ synctex_point_t ;
typedef int * synctex_node_t ;
struct TYPE_15__ {int * left; int * right; int * member_1; int * member_0; } ;
typedef TYPE_3__ synctex_node_set_t ;
struct TYPE_16__ {scalar_t__ left; scalar_t__ right; int member_1; int member_0; } ;
typedef TYPE_4__ synctex_distances_t ;
struct TYPE_13__ {float unit; float x_offset; float y_offset; int * sheet; } ;


 int INT_MAX ;
 int * SYNCTEX_CHILD (int *) ;
 scalar_t__ SYNCTEX_COLUMN (int *) ;
 int * SYNCTEX_CUR ;
 scalar_t__ SYNCTEX_END ;
 scalar_t__ SYNCTEX_LINE (int *) ;
 int * SYNCTEX_NEXT_HORIZ_BOX (int *) ;
 int SYNCTEX_PAGE (int *) ;
 int * SYNCTEX_SIBLING (int *) ;
 scalar_t__ SYNCTEX_START ;
 int SYNCTEX_STATUS_ERROR ;
 scalar_t__ SYNCTEX_TAG (int *) ;
 int * _synctex_eq_deepest_container (TYPE_2__,int *,int ) ;
 int _synctex_eq_get_closest_children_in_box (TYPE_2__,int *,TYPE_3__*,TYPE_4__*,int ) ;
 scalar_t__ _synctex_point_in_box (TYPE_2__,int *,int ) ;
 int * _synctex_smallest_container (int *,int *) ;
 int free (scalar_t__) ;
 scalar_t__ malloc (int) ;
 int synctex_YES ;
 TYPE_1__* synctex_scanner_parse (TYPE_1__*) ;

int synctex_edit_query(synctex_scanner_t scanner,int page,float h,float v) {
 synctex_node_t sheet = ((void*)0);
 synctex_node_t node = ((void*)0);
 synctex_node_t other_node = ((void*)0);
 synctex_point_t hitPoint = {0,0};
 synctex_node_set_t bestNodes = {((void*)0),((void*)0)};
 synctex_distances_t bestDistances = {INT_MAX,INT_MAX};
 synctex_node_t bestContainer = ((void*)0);
 if (((void*)0) == (scanner = synctex_scanner_parse(scanner)) || 0 >= scanner->unit) {
  return 0;
 }

 hitPoint.h = (h-scanner->x_offset)/scanner->unit;
 hitPoint.v = (v-scanner->y_offset)/scanner->unit;

 free(SYNCTEX_START);
 SYNCTEX_START = SYNCTEX_END = SYNCTEX_CUR = ((void*)0);

 sheet = scanner->sheet;
 while((sheet) && SYNCTEX_PAGE(sheet) != page) {
  sheet = SYNCTEX_SIBLING(sheet);
 }
 if (((void*)0) == sheet) {
  return -1;
 }






 if ((node = SYNCTEX_NEXT_HORIZ_BOX(sheet))) {
  do {
   if (_synctex_point_in_box(hitPoint,node,synctex_YES)) {

end:

    if ((other_node = SYNCTEX_NEXT_HORIZ_BOX(node))) {
     do {
      if (_synctex_point_in_box(hitPoint,other_node,synctex_YES)) {
       node = _synctex_smallest_container(other_node,node);
      }
     } while((other_node = SYNCTEX_NEXT_HORIZ_BOX(other_node)));
    }

    if ((bestContainer = _synctex_eq_deepest_container(hitPoint,node,synctex_YES))) {
     node = bestContainer;
    }
    _synctex_eq_get_closest_children_in_box(hitPoint,node,&bestNodes,&bestDistances,synctex_YES);
    if (bestNodes.right && bestNodes.left) {
     if ((SYNCTEX_TAG(bestNodes.right)!=SYNCTEX_TAG(bestNodes.left))
       || (SYNCTEX_LINE(bestNodes.right)!=SYNCTEX_LINE(bestNodes.left))
        || (SYNCTEX_COLUMN(bestNodes.right)!=SYNCTEX_COLUMN(bestNodes.left))) {
      if ((SYNCTEX_START = malloc(2*sizeof(synctex_node_t)))) {
       if (bestDistances.left>bestDistances.right) {
        ((synctex_node_t *)SYNCTEX_START)[0] = bestNodes.right;
        ((synctex_node_t *)SYNCTEX_START)[1] = bestNodes.left;
       } else {
        ((synctex_node_t *)SYNCTEX_START)[0] = bestNodes.left;
        ((synctex_node_t *)SYNCTEX_START)[1] = bestNodes.right;
       }
       SYNCTEX_END = SYNCTEX_START + 2*sizeof(synctex_node_t);
       SYNCTEX_CUR = ((void*)0);
       return (SYNCTEX_END-SYNCTEX_START)/sizeof(synctex_node_t);
      }
      return SYNCTEX_STATUS_ERROR;
     }


     if (bestDistances.left>bestDistances.right) {
      bestNodes.left = bestNodes.right;
     }
     bestNodes.right = ((void*)0);
    } else if (bestNodes.right) {
     bestNodes.left = bestNodes.right;
    } else if (!bestNodes.left){
     bestNodes.left = node;
    }
    if ((SYNCTEX_START = malloc(sizeof(synctex_node_t)))) {
     * (synctex_node_t *)SYNCTEX_START = bestNodes.left;
     SYNCTEX_END = SYNCTEX_START + sizeof(synctex_node_t);
     SYNCTEX_CUR = ((void*)0);
     return (SYNCTEX_END-SYNCTEX_START)/sizeof(synctex_node_t);
    }
    return SYNCTEX_STATUS_ERROR;
   }
  } while ((node = SYNCTEX_NEXT_HORIZ_BOX(node)));



 }

 if ((node = SYNCTEX_CHILD(sheet))) {
  goto end;
 }
 return 0;
}
