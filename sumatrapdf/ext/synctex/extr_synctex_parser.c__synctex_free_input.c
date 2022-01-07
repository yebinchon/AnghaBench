
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ synctex_node_t ;


 int SYNCTEX_FREE (int ) ;
 scalar_t__ SYNCTEX_NAME (scalar_t__) ;
 int SYNCTEX_SIBLING (scalar_t__) ;
 int free (scalar_t__) ;

void _synctex_free_input(synctex_node_t node){
 if (node) {
  SYNCTEX_FREE(SYNCTEX_SIBLING(node));
  free(SYNCTEX_NAME(node));
  free(node);
 }
}
