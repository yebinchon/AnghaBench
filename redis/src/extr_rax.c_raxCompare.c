
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t key_len; int key; } ;
typedef TYPE_1__ raxIterator ;


 int memcmp (int ,unsigned char*,size_t) ;

int raxCompare(raxIterator *iter, const char *op, unsigned char *key, size_t key_len) {
    int eq = 0, lt = 0, gt = 0;

    if (op[0] == '=' || op[1] == '=') eq = 1;
    if (op[0] == '>') gt = 1;
    else if (op[0] == '<') lt = 1;
    else if (op[1] != '=') return 0;

    size_t minlen = key_len < iter->key_len ? key_len : iter->key_len;
    int cmp = memcmp(iter->key,key,minlen);


    if (lt == 0 && gt == 0) return cmp == 0 && key_len == iter->key_len;


    if (cmp == 0) {

        if (eq && key_len == iter->key_len) return 1;
        else if (lt) return iter->key_len < key_len;
        else if (gt) return iter->key_len > key_len;
        return 0;
    } else if (cmp > 0) {
        return gt ? 1 : 0;
    } else {
        return lt ? 1 : 0;
    }
}
