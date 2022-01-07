
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum ddt_type { ____Placeholder_ddt_type } ddt_type ;
typedef enum ddt_class { ____Placeholder_ddt_class } ddt_class ;
struct TYPE_3__ {int ** ddt_object; } ;
typedef TYPE_1__ ddt_t ;
typedef int boolean_t ;



boolean_t
ddt_object_exists(ddt_t *ddt, enum ddt_type type, enum ddt_class class)
{
 return (!!ddt->ddt_object[type][class]);
}
