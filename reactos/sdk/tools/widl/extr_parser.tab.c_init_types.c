
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TYPE_BASIC_BYTE ;
 int TYPE_BASIC_DOUBLE ;
 int TYPE_BASIC_ERROR_STATUS_T ;
 int TYPE_BASIC_FLOAT ;
 int TYPE_BASIC_HANDLE ;
 int TYPE_BASIC_WCHAR ;
 int decl_builtin_alias (char*,int ) ;
 int decl_builtin_basic (char*,int ) ;
 int type_new_basic (int ) ;

void init_types(void)
{
  decl_builtin_basic("byte", TYPE_BASIC_BYTE);
  decl_builtin_basic("wchar_t", TYPE_BASIC_WCHAR);
  decl_builtin_basic("float", TYPE_BASIC_FLOAT);
  decl_builtin_basic("double", TYPE_BASIC_DOUBLE);
  decl_builtin_basic("error_status_t", TYPE_BASIC_ERROR_STATUS_T);
  decl_builtin_basic("handle_t", TYPE_BASIC_HANDLE);
  decl_builtin_alias("boolean", type_new_basic(TYPE_BASIC_BYTE));
}
