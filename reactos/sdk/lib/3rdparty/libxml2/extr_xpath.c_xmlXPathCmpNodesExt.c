
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlNodePtr ;
typedef int ptrdiff_t ;
struct TYPE_4__ {int type; scalar_t__ doc; struct TYPE_4__* next; scalar_t__ content; struct TYPE_4__* prev; struct TYPE_4__* parent; } ;
__attribute__((used)) static int
xmlXPathCmpNodesExt(xmlNodePtr node1, xmlNodePtr node2) {
    int depth1, depth2;
    int misc = 0, precedence1 = 0, precedence2 = 0;
    xmlNodePtr miscNode1 = ((void*)0), miscNode2 = ((void*)0);
    xmlNodePtr cur, root;
    ptrdiff_t l1, l2;

    if ((node1 == ((void*)0)) || (node2 == ((void*)0)))
 return(-2);

    if (node1 == node2)
 return(0);




    switch (node1->type) {
 case 131:
     if (node2->type == 131) {
  if ((0 > (ptrdiff_t) node1->content) &&
      (0 > (ptrdiff_t) node2->content) &&
      (node1->doc == node2->doc))
  {
      l1 = -((ptrdiff_t) node1->content);
      l2 = -((ptrdiff_t) node2->content);
      if (l1 < l2)
   return(1);
      if (l1 > l2)
   return(-1);
  } else
      goto turtle_comparison;
     }
     break;
 case 134:
     precedence1 = 1;
     miscNode1 = node1;
     node1 = node1->parent;
     misc = 1;
     break;
 case 128:
 case 133:
 case 132:
 case 129: {
     miscNode1 = node1;



     if (node1->prev != ((void*)0)) {
  do {
      node1 = node1->prev;
      if (node1->type == 131) {
   precedence1 = 3;
   break;
      }
      if (node1->prev == ((void*)0)) {
   precedence1 = 2;




   node1 = node1->parent;
   break;
      }
  } while (1);
     } else {
  precedence1 = 2;
  node1 = node1->parent;
     }
     if ((node1 == ((void*)0)) || (node1->type != 131) ||
  (0 <= (ptrdiff_t) node1->content)) {



  node1 = miscNode1;
  precedence1 = 0;
     } else
  misc = 1;
 }
     break;
 case 130:



     return(1);
 default:
     break;
    }
    switch (node2->type) {
 case 131:
     break;
 case 134:
     precedence2 = 1;
     miscNode2 = node2;
     node2 = node2->parent;
     misc = 1;
     break;
 case 128:
 case 133:
 case 132:
 case 129: {
     miscNode2 = node2;
     if (node2->prev != ((void*)0)) {
  do {
      node2 = node2->prev;
      if (node2->type == 131) {
   precedence2 = 3;
   break;
      }
      if (node2->prev == ((void*)0)) {
   precedence2 = 2;
   node2 = node2->parent;
   break;
      }
  } while (1);
     } else {
  precedence2 = 2;
  node2 = node2->parent;
     }
     if ((node2 == ((void*)0)) || (node2->type != 131) ||
  (0 <= (ptrdiff_t) node2->content))
     {
  node2 = miscNode2;
  precedence2 = 0;
     } else
  misc = 1;
 }
     break;
 case 130:
     return(1);
 default:
     break;
    }
    if (misc) {
 if (node1 == node2) {
     if (precedence1 == precedence2) {




  cur = miscNode2->prev;
  while (cur != ((void*)0)) {
      if (cur == miscNode1)
   return(1);
      if (cur->type == 131)
   return(-1);
      cur = cur->prev;
  }
  return (-1);
     } else {





  if (precedence1 < precedence2)
      return(1);
  else
      return(-1);
     }
 }
 if ((precedence2 == 3) && (precedence1 > 1)) {
     cur = node1->parent;
     while (cur) {
  if (cur == node2)
      return(1);
  cur = cur->parent;
     }
 }
 if ((precedence1 == 3) && (precedence2 > 1)) {
     cur = node2->parent;
     while (cur) {
  if (cur == node1)
      return(-1);
  cur = cur->parent;
     }
 }
    }




    if ((node1->type == 131) &&
 (node2->type == 131) &&
 (0 > (ptrdiff_t) node1->content) &&
 (0 > (ptrdiff_t) node2->content) &&
 (node1->doc == node2->doc)) {

 l1 = -((ptrdiff_t) node1->content);
 l2 = -((ptrdiff_t) node2->content);
 if (l1 < l2)
     return(1);
 if (l1 > l2)
     return(-1);
    }

turtle_comparison:

    if (node1 == node2->prev)
 return(1);
    if (node1 == node2->next)
 return(-1);



    for (depth2 = 0, cur = node2; cur->parent != ((void*)0); cur = cur->parent) {
 if (cur->parent == node1)
     return(1);
 depth2++;
    }
    root = cur;
    for (depth1 = 0, cur = node1; cur->parent != ((void*)0); cur = cur->parent) {
 if (cur->parent == node2)
     return(-1);
 depth1++;
    }



    if (root != cur) {
 return(-2);
    }



    while (depth1 > depth2) {
 depth1--;
 node1 = node1->parent;
    }
    while (depth2 > depth1) {
 depth2--;
 node2 = node2->parent;
    }
    while (node1->parent != node2->parent) {
 node1 = node1->parent;
 node2 = node2->parent;

 if ((node1 == ((void*)0)) || (node2 == ((void*)0)))
     return(-2);
    }



    if (node1 == node2->prev)
 return(1);
    if (node1 == node2->next)
 return(-1);



    if ((node1->type == 131) &&
 (node2->type == 131) &&
 (0 > (ptrdiff_t) node1->content) &&
 (0 > (ptrdiff_t) node2->content) &&
 (node1->doc == node2->doc)) {

 l1 = -((ptrdiff_t) node1->content);
 l2 = -((ptrdiff_t) node2->content);
 if (l1 < l2)
     return(1);
 if (l1 > l2)
     return(-1);
    }

    for (cur = node1->next;cur != ((void*)0);cur = cur->next)
 if (cur == node2)
     return(1);
    return(-1);
}
