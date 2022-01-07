
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zio_cksum_t ;
struct TYPE_6__ {int * labels; } ;
typedef TYPE_1__ cksum_record_t ;
typedef int avl_tree_t ;


 int B_TRUE ;
 int avl_add (int *,TYPE_1__*) ;
 TYPE_1__* cksum_record_alloc (int *,int) ;
 TYPE_1__* cksum_record_lookup (int *,int *) ;

__attribute__((used)) static cksum_record_t *
cksum_record_insert(avl_tree_t *tree, zio_cksum_t *cksum, int l)
{
 cksum_record_t *rec;

 rec = cksum_record_lookup(tree, cksum);
 if (rec) {
  rec->labels[l] = B_TRUE;
 } else {
  rec = cksum_record_alloc(cksum, l);
  avl_add(tree, rec);
 }

 return (rec);
}
