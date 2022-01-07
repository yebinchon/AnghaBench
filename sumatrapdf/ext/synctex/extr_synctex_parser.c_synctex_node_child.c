
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int synctex_node_t ;


 int SYNCTEX_CHILD (int ) ;

synctex_node_t synctex_node_child(synctex_node_t node)
{
 return SYNCTEX_CHILD(node);
}
