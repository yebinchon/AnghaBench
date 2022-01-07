
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * ifaces; } ;
struct TYPE_7__ {TYPE_1__ coclass; } ;
struct TYPE_8__ {int defined; TYPE_2__ details; } ;
typedef TYPE_3__ type_t ;
typedef int ifref_list_t ;


 int TRUE ;

type_t *type_coclass_define(type_t *coclass, ifref_list_t *ifaces)
{
    coclass->details.coclass.ifaces = ifaces;
    coclass->defined = TRUE;
    return coclass;
}
