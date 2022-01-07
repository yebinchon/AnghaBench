
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_22__ {char* name; int attrs; void* written; int defined; int namespace; } ;
typedef TYPE_1__ type_t ;
typedef enum name_type { ____Placeholder_name_type } name_type ;
typedef int FILE ;


 int ATTR_CONST ;
 void* TRUE ;
 int assert (int ) ;
 int fprintf (int *,char*,...) ;
 int indent (int *,int) ;
 int indentation ;
 scalar_t__ is_attr (int ,int ) ;
 int is_global_namespace (int ) ;
 int is_ptr (TYPE_1__*) ;
 TYPE_1__* type_array_get_element (TYPE_1__*) ;
 int type_array_is_decl_as_ptr (TYPE_1__*) ;
 int type_basic_get_sign (TYPE_1__*) ;
 int type_basic_get_type (TYPE_1__*) ;
 TYPE_1__* type_bitfield_get_field (TYPE_1__*) ;
 int type_encapsulated_union_get_fields (TYPE_1__*) ;
 int type_enum_get_values (TYPE_1__*) ;
 char* type_get_name (TYPE_1__*,int) ;
 int const type_get_type (TYPE_1__*) ;
 int type_get_type_detect_alias (TYPE_1__*) ;
 scalar_t__ type_is_alias (TYPE_1__*) ;
 TYPE_1__* type_pointer_get_ref (TYPE_1__*) ;
 int type_struct_get_fields (TYPE_1__*) ;
 int type_union_get_cases (TYPE_1__*) ;
 int write_enums (int *,int ,char*) ;
 int write_fields (int *,int ) ;
 int write_pointer_left (int *,TYPE_1__*) ;

void write_type_left(FILE *h, type_t *t, enum name_type name_type, int declonly)
{
  const char *name;

  if (!h) return;

  name = type_get_name(t, name_type);

  if (is_attr(t->attrs, ATTR_CONST) &&
      (type_is_alias(t) || !is_ptr(t)))
    fprintf(h, "const ");

  if (type_is_alias(t)) fprintf(h, "%s", t->name);
  else {
    switch (type_get_type_detect_alias(t)) {
      case 135:
        if (!declonly && t->defined && !t->written) {
          if (name) fprintf(h, "enum %s {\n", name);
          else fprintf(h, "enum {\n");
          t->written = TRUE;
          indentation++;
          write_enums(h, type_enum_get_values(t), is_global_namespace(t->namespace) ? ((void*)0) : t->name);
          indent(h, -1);
          fprintf(h, "}");
        }
        else fprintf(h, "enum %s", name ? name : "");
        break;
      case 130:
      case 136:
        if (!declonly && t->defined && !t->written) {
          if (name) fprintf(h, "struct %s {\n", name);
          else fprintf(h, "struct {\n");
          t->written = TRUE;
          indentation++;
          if (type_get_type(t) != 130)
            write_fields(h, type_encapsulated_union_get_fields(t));
          else
            write_fields(h, type_struct_get_fields(t));
          indent(h, -1);
          fprintf(h, "}");
        }
        else fprintf(h, "struct %s", name ? name : "");
        break;
      case 129:
        if (!declonly && t->defined && !t->written) {
          if (t->name) fprintf(h, "union %s {\n", t->name);
          else fprintf(h, "union {\n");
          t->written = TRUE;
          indentation++;
          write_fields(h, type_union_get_cases(t));
          indent(h, -1);
          fprintf(h, "}");
        }
        else fprintf(h, "union %s", t->name ? t->name : "");
        break;
      case 131:
      {
        write_type_left(h, type_pointer_get_ref(t), name_type, declonly);
        write_pointer_left(h, type_pointer_get_ref(t));
        if (is_attr(t->attrs, ATTR_CONST)) fprintf(h, "const ");
        break;
      }
      case 155:
        if (t->name && type_array_is_decl_as_ptr(t))
          fprintf(h, "%s", t->name);
        else
        {
          write_type_left(h, type_array_get_element(t), name_type, declonly);
          if (type_array_is_decl_as_ptr(t))
            write_pointer_left(h, type_array_get_element(t));
        }
        break;
      case 154:
        if (type_basic_get_type(t) != 144 &&
            type_basic_get_type(t) != 142 &&
            type_basic_get_type(t) != 140 &&
            type_basic_get_type(t) != 147)
        {
          if (type_basic_get_sign(t) < 0) fprintf(h, "signed ");
          else if (type_basic_get_sign(t) > 0) fprintf(h, "unsigned ");
        }
        switch (type_basic_get_type(t))
        {
        case 141: fprintf(h, "small"); break;
        case 145: fprintf(h, "short"); break;
        case 146: fprintf(h, "int"); break;
        case 143: fprintf(h, "__int3264"); break;
        case 153: fprintf(h, "byte"); break;
        case 152: fprintf(h, "char"); break;
        case 139: fprintf(h, "wchar_t"); break;
        case 149: fprintf(h, "float"); break;
        case 151: fprintf(h, "double"); break;
        case 150: fprintf(h, "error_status_t"); break;
        case 148: fprintf(h, "handle_t"); break;
        case 144:
          if (type_basic_get_sign(t) > 0)
            fprintf(h, "UINT32");
          else
            fprintf(h, "INT32");
          break;
        case 140:
          if (type_basic_get_sign(t) > 0)
            fprintf(h, "ULONG");
          else
            fprintf(h, "LONG");
          break;
        case 142:
          if (type_basic_get_sign(t) > 0)
            fprintf(h, "UINT64");
          else
            fprintf(h, "INT64");
          break;
        case 147:
          if (type_basic_get_sign(t) > 0)
            fprintf(h, "MIDL_uhyper");
          else
            fprintf(h, "hyper");
          break;
        }
        break;
      case 133:
      case 132:
      case 137:
        fprintf(h, "%s", t->name);
        break;
      case 128:
        fprintf(h, "void");
        break;
      case 138:
        write_type_left(h, type_bitfield_get_field(t), name_type, declonly);
        break;
      case 156:
      case 134:

        assert(0);
        break;
    }
  }
}
