
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {char* c_name; char* name; int namespace; int attrs; } ;
typedef TYPE_1__ type_t ;
typedef int UUID ;
typedef int FILE ;


 int ATTR_DISPINTERFACE ;
 int ATTR_UUID ;
 int FALSE ;
 int fprintf (int *,char*,...) ;
 int * get_attrp (int ,int ) ;
 int indent (int *,int ) ;
 int is_attr (int ,int ) ;
 int is_global_namespace (int ) ;
 TYPE_1__* type_iface_get_inherit (TYPE_1__*) ;
 char* uuid_string (int const*) ;
 int winrt_mode ;
 int write_c_disp_method_def (int *,TYPE_1__*) ;
 int write_c_method_def (int *,TYPE_1__*) ;
 int write_cpp_method_def (int *,TYPE_1__*) ;
 int write_guid (int *,char*,char*,int const*) ;
 int write_inline_wrappers (int *,TYPE_1__*,TYPE_1__*,char*) ;
 int write_line (int *,int,char*,...) ;
 int write_locals (int *,TYPE_1__*,int ) ;
 int write_method_macro (int *,TYPE_1__*,TYPE_1__*,char*) ;
 int write_method_proto (int *,TYPE_1__*) ;
 int write_namespace_end (int *,int ) ;
 int write_namespace_start (int *,int ) ;
 int write_uuid_decl (int *,TYPE_1__*,int const*) ;

__attribute__((used)) static void write_com_interface_end(FILE *header, type_t *iface)
{
  int dispinterface = is_attr(iface->attrs, ATTR_DISPINTERFACE);
  const UUID *uuid = get_attrp(iface->attrs, ATTR_UUID);
  type_t *type;

  if (uuid)
      write_guid(header, dispinterface ? "DIID" : "IID", iface->c_name, uuid);


  fprintf(header, "#if defined(__cplusplus) && !defined(CINTERFACE)\n");
  if (!is_global_namespace(iface->namespace)) {
      write_line(header, 0, "} /* extern \"C\" */");
      write_namespace_start(header, iface->namespace);
  }
  if (uuid) {
      write_line(header, 0, "MIDL_INTERFACE(\"%s\")", uuid_string(uuid));
      indent(header, 0);
  }else {
      indent(header, 0);
      fprintf(header, "interface ");
  }
  if (type_iface_get_inherit(iface))
  {
    fprintf(header, "%s : public %s\n", iface->name,
            type_iface_get_inherit(iface)->name);
    write_line(header, 1, "{");
  }
  else
  {
    fprintf(header, "%s\n", iface->name);
    write_line(header, 1, "{\n");
    write_line(header, 0, "BEGIN_INTERFACE\n");
  }


  if (!dispinterface)
    write_cpp_method_def(header, iface);
  if (!type_iface_get_inherit(iface))
    write_line(header, 0, "END_INTERFACE\n");
  write_line(header, -1, "};");
  if (!is_global_namespace(iface->namespace)) {
      write_namespace_end(header, iface->namespace);
      write_line(header, 0, "extern \"C\" {");
  }
  if (uuid)
      write_uuid_decl(header, iface, uuid);
  fprintf(header, "#else\n");

  write_line(header, 1, "typedef struct %sVtbl {", iface->c_name);
  write_line(header, 0, "BEGIN_INTERFACE\n");
  if (dispinterface)
    write_c_disp_method_def(header, iface);
  else
    write_c_method_def(header, iface);
  write_line(header, 0, "END_INTERFACE");
  write_line(header, -1, "} %sVtbl;\n", iface->c_name);
  fprintf(header, "interface %s {\n", iface->c_name);
  fprintf(header, "    CONST_VTBL %sVtbl* lpVtbl;\n", iface->c_name);
  fprintf(header, "};\n\n");
  fprintf(header, "#ifdef COBJMACROS\n");


  fprintf(header, "#ifndef WIDL_C_INLINE_WRAPPERS\n");
  type = dispinterface ? type_iface_get_inherit(iface) : iface;
  write_method_macro(header, type, type, iface->c_name);
  fprintf(header, "#else\n");
  write_inline_wrappers(header, type, type, iface->c_name);
  fprintf(header, "#endif\n");
  fprintf(header, "#endif\n");
  fprintf(header, "\n");
  fprintf(header, "#endif\n");
  fprintf(header, "\n");


  if (!dispinterface && !winrt_mode)
  {
    write_method_proto(header, iface);
    write_locals(header, iface, FALSE);
    fprintf(header, "\n");
  }
  fprintf(header,"#endif  /* __%s_%sINTERFACE_DEFINED__ */\n\n", iface->c_name, dispinterface ? "DISP" : "");
}
