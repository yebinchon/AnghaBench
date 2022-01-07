
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree {scalar_t__ next_node; TYPE_1__* nodes; } ;
struct TYPE_2__ {int length; int value; int is_value; } ;


 scalar_t__ MAX_TREE_NODES ;
 int TREE_FAST_BITS ;

__attribute__((used)) static bool tree_add_value(struct tree *tree, int key, int bits, int value)
{
    int rkey = 0, i;
    for (i = 0; i < bits; i++)
        rkey = (rkey << 1) | ((key >> i) & 1);

    if (bits <= TREE_FAST_BITS) {
        if (tree->nodes[rkey].length)
            return 0;
        tree->nodes[rkey].length = bits;
        tree->nodes[rkey].value = value;
        tree->nodes[rkey].is_value = 1;
        for (i = 1; i < (1 << (TREE_FAST_BITS - bits)); i++) {
            if (tree->nodes[rkey | (i << bits)].length)
                return 0;
            tree->nodes[rkey | (i << bits)] = tree->nodes[rkey];
        }
        return 1;
    }

    rkey &= (1 << TREE_FAST_BITS) - 1;
    if (tree->nodes[rkey].is_value)
        return 0;
    tree->nodes[rkey].length = TREE_FAST_BITS + 1;
    if (!tree->nodes[rkey].value)
        tree->nodes[rkey].value = (1 << TREE_FAST_BITS) + tree->next_node++ * 2;
    i = tree->nodes[rkey].value;
    bits -= TREE_FAST_BITS;

    while (bits > 1) {
        i |= (key >> (bits - 1)) & 1;
        if (tree->nodes[i].is_value)
            return 0;
        if (!tree->nodes[i].value) {
            if (tree->next_node == MAX_TREE_NODES)
                return 0;
            tree->nodes[i].value = (1 << TREE_FAST_BITS) + tree->next_node++ * 2;
        }
        i = tree->nodes[i].value;
        bits--;
    }
    i |= key & 1;
    if (tree->nodes[i].value || tree->nodes[i].is_value)
        return 0;
    tree->nodes[i].value = value;
    tree->nodes[i].is_value = 1;

    return 1;
}
