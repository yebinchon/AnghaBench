
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int uqn_id; } ;
typedef TYPE_1__ userquota_node_t ;


 int TREE_ISIGN (int) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
userquota_compare(const void *l, const void *r)
{
 const userquota_node_t *luqn = l;
 const userquota_node_t *ruqn = r;
 int rv;





 rv = strcmp(luqn->uqn_id, ruqn->uqn_id);

 return (TREE_ISIGN(rv));
}
