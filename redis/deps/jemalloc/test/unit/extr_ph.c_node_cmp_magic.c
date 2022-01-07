
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int magic; } ;
typedef TYPE_1__ node_t ;


 int NODE_MAGIC ;
 int assert_u32_eq (int ,int ,char*) ;
 int node_cmp (TYPE_1__ const*,TYPE_1__ const*) ;

__attribute__((used)) static int
node_cmp_magic(const node_t *a, const node_t *b) {

 assert_u32_eq(a->magic, NODE_MAGIC, "Bad magic");
 assert_u32_eq(b->magic, NODE_MAGIC, "Bad magic");

 return node_cmp(a, b);
}
