
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int attrs; } ;
typedef TYPE_1__ typelib_t ;
typedef int UUID ;
typedef int FILE ;


 int ATTR_UUID ;
 int fprintf (int *,char*) ;
 int * get_attrp (int ,int ) ;
 int write_guid (int *,char*,int ,int const*) ;

__attribute__((used)) static void write_library(FILE *header, const typelib_t *typelib)
{
  const UUID *uuid = get_attrp(typelib->attrs, ATTR_UUID);
  fprintf(header, "\n");
  write_guid(header, "LIBID", typelib->name, uuid);
  fprintf(header, "\n");
}
