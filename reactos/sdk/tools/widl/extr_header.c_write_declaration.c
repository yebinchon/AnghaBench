
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; int stgclass; int type; scalar_t__ eval; } ;
typedef TYPE_1__ var_t ;
typedef int FILE ;


 int FALSE ;




 int fprintf (int *,char*,...) ;
 scalar_t__ is_const_decl (TYPE_1__ const*) ;
 int write_expr (int *,scalar_t__,int ,int,int *,int *,char*) ;
 int write_type_def_or_decl (int *,int ,int ,char*) ;

__attribute__((used)) static void write_declaration(FILE *header, const var_t *v)
{
  if (is_const_decl(v) && v->eval)
  {
    fprintf(header, "#define %s (", v->name);
    write_expr(header, v->eval, 0, 1, ((void*)0), ((void*)0), "");
    fprintf(header, ")\n\n");
  }
  else
  {
    switch (v->stgclass)
    {
      case 130:
      case 129:
        break;
      case 128:
        fprintf(header, "static ");
        break;
      case 131:
        fprintf(header, "extern ");
        break;
    }
    write_type_def_or_decl(header, v->type, FALSE, v->name);
    fprintf(header, ";\n\n");
  }
}
