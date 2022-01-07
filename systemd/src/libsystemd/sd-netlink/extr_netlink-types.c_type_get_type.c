
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int type; } ;
typedef TYPE_1__ NLType ;


 int assert (TYPE_1__ const*) ;

uint16_t type_get_type(const NLType *type) {
        assert(type);
        return type->type;
}
