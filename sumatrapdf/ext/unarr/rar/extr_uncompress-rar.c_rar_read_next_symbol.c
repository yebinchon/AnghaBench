
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef size_t uint16_t ;
struct huffman_code {scalar_t__ tablesize; TYPE_4__* tree; TYPE_1__* table; } ;
struct TYPE_10__ {scalar_t__ available; } ;
struct TYPE_11__ {TYPE_2__ br; } ;
struct TYPE_13__ {TYPE_3__ uncomp; } ;
typedef TYPE_5__ ar_archive_rar ;
struct TYPE_12__ {int* branches; } ;
struct TYPE_9__ {int length; int value; } ;


 scalar_t__ br_bits (TYPE_5__*,int) ;
 int br_check (TYPE_5__*,int) ;
 int rar_is_leaf_node (struct huffman_code*,int) ;
 int rar_make_table (struct huffman_code*) ;
 int warn (char*) ;

__attribute__((used)) static int rar_read_next_symbol(ar_archive_rar *rar, struct huffman_code *code)
{
    int node = 0;

    if (!code->table && !rar_make_table(code))
        return -1;


    if (code->tablesize <= rar->uncomp.br.available) {
        uint16_t bits = (uint16_t)br_bits(rar, code->tablesize);
        int length = code->table[bits].length;
        int value = code->table[bits].value;

        if (length < 0) {
            warn("Invalid data in bitstream");
            return -1;
        }
        if (length <= code->tablesize) {

            rar->uncomp.br.available += code->tablesize - length;
            return value;
        }

        node = value;
    }

    while (!rar_is_leaf_node(code, node)) {
        uint8_t bit;
        if (!br_check(rar, 1))
            return -1;
        bit = (uint8_t)br_bits(rar, 1);
        if (code->tree[node].branches[bit] < 0) {
            warn("Invalid data in bitstream");
            return -1;
        }
        node = code->tree[node].branches[bit];
    }

    return code->tree[node].branches[0];
}
