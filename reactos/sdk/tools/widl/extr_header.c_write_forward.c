
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* c_name; int namespace; int name; } ;
typedef TYPE_1__ type_t ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int write_line (int *,int ,char*,int ) ;
 int write_namespace_end (int *,int ) ;
 int write_namespace_start (int *,int ) ;

__attribute__((used)) static void write_forward(FILE *header, type_t *iface)
{
  fprintf(header, "#ifndef __%s_FWD_DEFINED__\n", iface->c_name);
  fprintf(header, "#define __%s_FWD_DEFINED__\n", iface->c_name);
  fprintf(header, "typedef interface %s %s;\n", iface->c_name, iface->c_name);
  fprintf(header, "#ifdef __cplusplus\n");
  write_namespace_start(header, iface->namespace);
  write_line(header, 0, "interface %s;", iface->name);
  write_namespace_end(header, iface->namespace);
  fprintf(header, "#endif /* __cplusplus */\n");
  fprintf(header, "#endif\n\n" );
}
