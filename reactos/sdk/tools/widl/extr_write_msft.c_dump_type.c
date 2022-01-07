
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int attrs; int name; } ;
typedef TYPE_1__ type_t ;


 int chat (char*,TYPE_1__*,int ,int ,int ) ;
 int type_get_type (TYPE_1__*) ;

__attribute__((used)) static void dump_type(type_t *t)
{
    chat("dump_type: %p name %s type %d attrs %p\n", t, t->name, type_get_type(t), t->attrs);
}
