
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; int attrs; } ;
typedef TYPE_1__ type_t ;
typedef int UUID ;
typedef int FILE ;


 int ATTR_UUID ;
 int fprintf (int *,char*,...) ;
 int * get_attrp (int ,int ) ;
 char* uuid_string (int const*) ;
 int write_guid (int *,char*,char*,int const*) ;
 int write_uuid_decl (int *,TYPE_1__*,int const*) ;

__attribute__((used)) static void write_coclass(FILE *header, type_t *cocl)
{
  const UUID *uuid = get_attrp(cocl->attrs, ATTR_UUID);

  fprintf(header, "/*****************************************************************************\n");
  fprintf(header, " * %s coclass\n", cocl->name);
  fprintf(header, " */\n\n");
  if (uuid)
      write_guid(header, "CLSID", cocl->name, uuid);
  fprintf(header, "\n#ifdef __cplusplus\n");
  if (uuid)
  {
      fprintf(header, "class DECLSPEC_UUID(\"%s\") %s;\n", uuid_string(uuid), cocl->name);
      write_uuid_decl(header, cocl, uuid);
  }
  else
  {
      fprintf(header, "class %s;\n", cocl->name);
  }
  fprintf(header, "#endif\n");
  fprintf(header, "\n");
}
