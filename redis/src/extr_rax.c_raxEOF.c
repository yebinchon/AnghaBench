
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ raxIterator ;


 int RAX_ITER_EOF ;

int raxEOF(raxIterator *it) {
    return it->flags & RAX_ITER_EOF;
}
