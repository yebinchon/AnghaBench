
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t key_len; } ;
typedef TYPE_1__ raxIterator ;



void raxIteratorDelChars(raxIterator *it, size_t count) {
    it->key_len -= count;
}
