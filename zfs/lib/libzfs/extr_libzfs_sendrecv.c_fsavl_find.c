
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int nvlist_t ;
struct TYPE_4__ {char* fn_snapname; int * fn_nvfs; int fn_guid; } ;
typedef TYPE_1__ fsavl_node_t ;
typedef int avl_tree_t ;


 TYPE_1__* avl_find (int *,TYPE_1__*,int *) ;

__attribute__((used)) static nvlist_t *
fsavl_find(avl_tree_t *avl, uint64_t snapguid, char **snapname)
{
 fsavl_node_t fn_find;
 fsavl_node_t *fn;

 fn_find.fn_guid = snapguid;

 fn = avl_find(avl, &fn_find, ((void*)0));
 if (fn) {
  if (snapname)
   *snapname = fn->fn_snapname;
  return (fn->fn_nvfs);
 }
 return (((void*)0));
}
