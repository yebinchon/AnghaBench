
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {TYPE_4__* elem; } ;
struct TYPE_12__ {TYPE_4__* ref; } ;
struct TYPE_14__ {TYPE_2__ array; TYPE_1__ pointer; } ;
struct TYPE_15__ {TYPE_3__ details; } ;
typedef TYPE_4__ type_t ;


 int assert (int ) ;
 TYPE_4__* get_array_or_ptr_ref (TYPE_4__*) ;
 scalar_t__ is_array (TYPE_4__*) ;
 scalar_t__ is_ptr (TYPE_4__*) ;

__attribute__((used)) static type_t *append_chain_type(type_t *chain, type_t *type)
{
    type_t *chain_type;

    if (!chain)
        return type;
    for (chain_type = chain; get_array_or_ptr_ref(chain_type); chain_type = get_array_or_ptr_ref(chain_type))
        ;

    if (is_ptr(chain_type))
        chain_type->details.pointer.ref = type;
    else if (is_array(chain_type))
        chain_type->details.array.elem = type;
    else
        assert(0);

    return chain;
}
