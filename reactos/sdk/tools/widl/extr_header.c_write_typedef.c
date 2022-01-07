
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ type_t ;
typedef int FILE ;


 int FALSE ;
 int fprintf (int *,char*) ;
 int type_alias_get_aliasee (TYPE_1__*) ;
 int write_type_def_or_decl (int *,int ,int ,int ) ;

__attribute__((used)) static void write_typedef(FILE *header, type_t *type)
{
  fprintf(header, "typedef ");
  write_type_def_or_decl(header, type_alias_get_aliasee(type), FALSE, type->name);
  fprintf(header, ";\n");
}
