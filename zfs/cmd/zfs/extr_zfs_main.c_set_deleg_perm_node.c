
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zfs_deleg_who_type_t ;
typedef int uu_avl_t ;
typedef int uu_avl_index_t ;
struct TYPE_8__ {void* dp_descend; void* dp_local; } ;
typedef TYPE_1__ deleg_perm_t ;
struct TYPE_9__ {TYPE_1__ dpn_perm; } ;
typedef TYPE_2__ deleg_perm_node_t ;


 int B_FALSE ;
 void* B_TRUE ;



 int assert (int ) ;
 int deleg_perm_init (TYPE_1__*,int ,char const*) ;
 TYPE_2__* uu_avl_find (int *,TYPE_2__*,int *,int *) ;
 int uu_avl_insert (int *,TYPE_2__*,int ) ;

__attribute__((used)) static void
set_deleg_perm_node(uu_avl_t *avl, deleg_perm_node_t *node,
    zfs_deleg_who_type_t who_type, const char *name, char locality)
{
 uu_avl_index_t idx = 0;

 deleg_perm_node_t *found_node = ((void*)0);
 deleg_perm_t *deleg_perm = &node->dpn_perm;

 deleg_perm_init(deleg_perm, who_type, name);

 if ((found_node = uu_avl_find(avl, node, ((void*)0), &idx))
     == ((void*)0))
  uu_avl_insert(avl, node, idx);
 else {
  node = found_node;
  deleg_perm = &node->dpn_perm;
 }


 switch (locality) {
 case 129:
  deleg_perm->dp_local = B_TRUE;
  break;
 case 130:
  deleg_perm->dp_descend = B_TRUE;
  break;
 case 128:
  break;
 default:
  assert(B_FALSE);
 }
}
