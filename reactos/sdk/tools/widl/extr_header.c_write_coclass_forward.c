
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;
typedef TYPE_1__ type_t ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;

__attribute__((used)) static void write_coclass_forward(FILE *header, type_t *cocl)
{
  fprintf(header, "#ifndef __%s_FWD_DEFINED__\n", cocl->name);
  fprintf(header, "#define __%s_FWD_DEFINED__\n", cocl->name);
  fprintf(header, "#ifdef __cplusplus\n");
  fprintf(header, "typedef class %s %s;\n", cocl->name, cocl->name);
  fprintf(header, "#else\n");
  fprintf(header, "typedef struct %s %s;\n", cocl->name, cocl->name);
  fprintf(header, "#endif /* defined __cplusplus */\n");
  fprintf(header, "#endif /* defined __%s_FWD_DEFINED__ */\n\n", cocl->name );
}
