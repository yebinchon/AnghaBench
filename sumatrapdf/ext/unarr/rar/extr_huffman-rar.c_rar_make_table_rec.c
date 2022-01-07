
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct huffman_code {int numentries; TYPE_2__* tree; TYPE_1__* table; } ;
struct TYPE_4__ {int* branches; } ;
struct TYPE_3__ {int length; int value; } ;


 scalar_t__ rar_is_leaf_node (struct huffman_code*,int) ;
 int warn (char*) ;

__attribute__((used)) static bool rar_make_table_rec(struct huffman_code *code, int node, int offset, int depth, int maxdepth)
{
    int currtablesize = 1 << (maxdepth - depth);

    if (node < 0 || code->numentries <= node) {
        warn("Invalid data in bitstream");
        return 0;
    }

    if (rar_is_leaf_node(code, node)) {
        int i;
        for (i = 0; i < currtablesize; i++) {
            code->table[offset + i].length = depth;
            code->table[offset + i].value = code->tree[node].branches[0];
        }
    }
    else if (depth == maxdepth) {
        code->table[offset].length = maxdepth + 1;
        code->table[offset].value = node;
    }
    else {
        if (!rar_make_table_rec(code, code->tree[node].branches[0], offset, depth + 1, maxdepth))
            return 0;
        if (!rar_make_table_rec(code, code->tree[node].branches[1], offset + currtablesize / 2, depth + 1, maxdepth))
            return 0;
    }
    return 1;
}
