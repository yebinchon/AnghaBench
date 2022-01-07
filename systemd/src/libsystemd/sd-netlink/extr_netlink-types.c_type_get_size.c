
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; } ;
typedef TYPE_1__ NLType ;


 int assert (TYPE_1__ const*) ;

size_t type_get_size(const NLType *type) {
        assert(type);
        return type->size;
}
