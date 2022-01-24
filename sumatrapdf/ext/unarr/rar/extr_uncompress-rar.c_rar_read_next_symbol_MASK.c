#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  size_t uint16_t ;
struct huffman_code {scalar_t__ tablesize; TYPE_4__* tree; TYPE_1__* table; } ;
struct TYPE_10__ {scalar_t__ available; } ;
struct TYPE_11__ {TYPE_2__ br; } ;
struct TYPE_13__ {TYPE_3__ uncomp; } ;
typedef  TYPE_5__ ar_archive_rar ;
struct TYPE_12__ {int* branches; } ;
struct TYPE_9__ {int length; int value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct huffman_code*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct huffman_code*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(ar_archive_rar *rar, struct huffman_code *code)
{
    int node = 0;

    if (!code->table && !FUNC3(code))
        return -1;

    /* performance optimization */
    if (code->tablesize <= rar->uncomp.br.available) {
        uint16_t bits = (uint16_t)FUNC0(rar, code->tablesize);
        int length = code->table[bits].length;
        int value = code->table[bits].value;

        if (length < 0) {
            FUNC4("Invalid data in bitstream"); /* invalid prefix code in bitstream */
            return -1;
        }
        if (length <= code->tablesize) {
            /* Skip only length bits */
            rar->uncomp.br.available += code->tablesize - length;
            return value;
        }

        node = value;
    }

    while (!FUNC2(code, node)) {
        uint8_t bit;
        if (!FUNC1(rar, 1))
            return -1;
        bit = (uint8_t)FUNC0(rar, 1);
        if (code->tree[node].branches[bit] < 0) {
            FUNC4("Invalid data in bitstream"); /* invalid prefix code in bitstream */
            return -1;
        }
        node = code->tree[node].branches[bit];
    }

    return code->tree[node].branches[0];
}