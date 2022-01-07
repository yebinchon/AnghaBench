
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int c_name; } ;
typedef TYPE_1__ type_t ;
typedef int FILE ;


 int do_write_c_method_def (int *,TYPE_1__ const*,int ) ;

__attribute__((used)) static void write_c_method_def(FILE *header, const type_t *iface)
{
  do_write_c_method_def(header, iface, iface->c_name);
}
