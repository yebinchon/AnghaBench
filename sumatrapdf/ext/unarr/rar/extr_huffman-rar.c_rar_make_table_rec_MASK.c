#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct huffman_code {int numentries; TYPE_2__* tree; TYPE_1__* table; } ;
struct TYPE_4__ {int* branches; } ;
struct TYPE_3__ {int length; int value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct huffman_code*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static bool FUNC2(struct huffman_code *code, int node, int offset, int depth, int maxdepth)
{
    int currtablesize = 1 << (maxdepth - depth);

    if (node < 0 || code->numentries <= node) {
        FUNC1("Invalid data in bitstream"); /* invalid location to Huffman tree specified */
        return false;
    }

    if (FUNC0(code, node)) {
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
        if (!FUNC2(code, code->tree[node].branches[0], offset, depth + 1, maxdepth))
            return false;
        if (!FUNC2(code, code->tree[node].branches[1], offset + currtablesize / 2, depth + 1, maxdepth))
            return false;
    }
    return true;
}