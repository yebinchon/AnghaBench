
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zio_cksum_t ;
struct TYPE_5__ {int cksum; } ;
typedef TYPE_1__ cksum_record_t ;
typedef int avl_tree_t ;
typedef int avl_index_t ;


 TYPE_1__* avl_find (int *,TYPE_1__*,int *) ;

__attribute__((used)) static cksum_record_t *
cksum_record_lookup(avl_tree_t *tree, zio_cksum_t *cksum)
{
 cksum_record_t lookup = { .cksum = *cksum };
 avl_index_t where;

 return (avl_find(tree, &lookup, &where));
}
