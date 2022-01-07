
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int type; scalar_t__ sign; } ;
struct TYPE_7__ {TYPE_1__ basic; } ;
struct TYPE_8__ {TYPE_2__ details; } ;
typedef TYPE_3__ type_t ;
typedef enum type_basic_type { ____Placeholder_type_basic_type } type_basic_type ;


 int TYPE_BASIC ;
 TYPE_3__* make_type (int ) ;

type_t *type_new_basic(enum type_basic_type basic_type)
{
    type_t *t = make_type(TYPE_BASIC);
    t->details.basic.type = basic_type;
    t->details.basic.sign = 0;
    return t;
}
