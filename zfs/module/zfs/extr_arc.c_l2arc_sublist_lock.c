
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int multilist_t ;
typedef int multilist_sublist_t ;
struct TYPE_4__ {int ** arcs_list; } ;
struct TYPE_3__ {int ** arcs_list; } ;


 size_t ARC_BUFC_DATA ;
 size_t ARC_BUFC_METADATA ;
 int ASSERT (int) ;
 int L2ARC_FEED_TYPES ;
 TYPE_2__* arc_mfu ;
 TYPE_1__* arc_mru ;
 unsigned int multilist_get_random_index (int *) ;
 int * multilist_sublist_lock (int *,unsigned int) ;

__attribute__((used)) static multilist_sublist_t *
l2arc_sublist_lock(int list_num)
{
 multilist_t *ml = ((void*)0);
 unsigned int idx;

 ASSERT(list_num >= 0 && list_num < L2ARC_FEED_TYPES);

 switch (list_num) {
 case 0:
  ml = arc_mfu->arcs_list[ARC_BUFC_METADATA];
  break;
 case 1:
  ml = arc_mru->arcs_list[ARC_BUFC_METADATA];
  break;
 case 2:
  ml = arc_mfu->arcs_list[ARC_BUFC_DATA];
  break;
 case 3:
  ml = arc_mru->arcs_list[ARC_BUFC_DATA];
  break;
 default:
  return (((void*)0));
 }







 idx = multilist_get_random_index(ml);
 return (multilist_sublist_lock(ml, idx));
}
