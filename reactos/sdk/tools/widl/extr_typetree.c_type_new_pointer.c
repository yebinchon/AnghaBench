
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned char def_fc; TYPE_3__* ref; } ;
struct TYPE_8__ {TYPE_1__ pointer; } ;
struct TYPE_9__ {int * attrs; TYPE_2__ details; } ;
typedef TYPE_3__ type_t ;
typedef int attr_list_t ;


 int TYPE_POINTER ;
 TYPE_3__* make_type (int ) ;

type_t *type_new_pointer(unsigned char pointer_default, type_t *ref, attr_list_t *attrs)
{
    type_t *t = make_type(TYPE_POINTER);
    t->details.pointer.def_fc = pointer_default;
    t->details.pointer.ref = ref;
    t->attrs = attrs;
    return t;
}
