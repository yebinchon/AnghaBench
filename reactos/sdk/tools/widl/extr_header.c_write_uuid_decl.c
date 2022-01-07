
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; int namespace; } ;
typedef TYPE_1__ type_t ;
struct TYPE_6__ {int Data1; int Data2; int Data3; int* Data4; } ;
typedef TYPE_2__ UUID ;
typedef int FILE ;


 char* format_namespace (int ,char*,char*,int ) ;
 int fprintf (int *,char*,...) ;
 int free (char*) ;

__attribute__((used)) static void write_uuid_decl(FILE *f, type_t *type, const UUID *uuid)
{
  char *name = format_namespace(type->namespace, "", "::", type->name);
  fprintf(f, "#ifdef __CRT_UUID_DECL\n");
  fprintf(f, "__CRT_UUID_DECL(%s, 0x%08x, 0x%04x, 0x%04x, 0x%02x,0x%02x, 0x%02x,"
        "0x%02x,0x%02x,0x%02x,0x%02x,0x%02x)\n",
        name, uuid->Data1, uuid->Data2, uuid->Data3, uuid->Data4[0], uuid->Data4[1],
        uuid->Data4[2], uuid->Data4[3], uuid->Data4[4], uuid->Data4[5], uuid->Data4[6],
        uuid->Data4[7]);
  fprintf(f, "#endif\n");
  free(name);
}
