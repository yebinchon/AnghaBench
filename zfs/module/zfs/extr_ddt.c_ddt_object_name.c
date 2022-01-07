
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef enum ddt_type { ____Placeholder_ddt_type } ddt_type ;
typedef enum ddt_class { ____Placeholder_ddt_class } ddt_class ;
struct TYPE_5__ {size_t ddt_checksum; } ;
typedef TYPE_1__ ddt_t ;
struct TYPE_7__ {int ddt_op_name; } ;
struct TYPE_6__ {int ci_name; } ;


 char* DMU_POOL_DDT ;
 int * ddt_class_name ;
 TYPE_3__** ddt_ops ;
 int sprintf (char*,char*,int ,int ,int ) ;
 TYPE_2__* zio_checksum_table ;

void
ddt_object_name(ddt_t *ddt, enum ddt_type type, enum ddt_class class,
    char *name)
{
 (void) sprintf(name, DMU_POOL_DDT,
     zio_checksum_table[ddt->ddt_checksum].ci_name,
     ddt_ops[type]->ddt_op_name, ddt_class_name[class]);
}
