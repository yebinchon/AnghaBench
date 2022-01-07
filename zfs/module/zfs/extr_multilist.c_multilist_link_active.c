
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int multilist_node_t ;


 int list_link_active (int *) ;

int
multilist_link_active(multilist_node_t *link)
{
 return (list_link_active(link));
}
