
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct huffman_code {TYPE_1__* tree; } ;
struct TYPE_2__ {scalar_t__* branches; } ;



__attribute__((used)) static inline bool rar_is_leaf_node(struct huffman_code *code, int node) { return code->tree[node].branches[0] == code->tree[node].branches[1]; }
