
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* flush ) (TYPE_1__*) ;} ;
typedef TYPE_1__ rio ;


 int stub1 (TYPE_1__*) ;

__attribute__((used)) static inline int rioFlush(rio *r) {
    return r->flush(r);
}
