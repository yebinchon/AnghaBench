
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef int zend_array ;
typedef int yaf_view_t ;
struct TYPE_3__ {scalar_t__ name; } ;


 int DEFAULT_SLASH ;
 scalar_t__ IS_ABSOLUTE_PATH (int ,int ) ;
 scalar_t__ IS_STRING ;
 int YAF_ERR_NOTFOUND_VIEW ;
 scalar_t__ YAF_G (int ) ;
 int YAF_VIEW_PROPERTY_NAME_TPLDIR ;
 int YAF_VIEW_PROPERTY_NAME_TPLVARS ;
 int ZEND_STRL (int ) ;
 int ZSTR_VAL (scalar_t__) ;
 int Z_STRLEN_P (int *) ;
 int Z_STRVAL_P (int *) ;
 int * Z_STR_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int * strpprintf (int ,char*,int ,int ,int ) ;
 int view_directory ;
 int yaf_trigger_error (int ,char*,int ) ;
 int * yaf_view_build_symtable (int *,int *) ;
 int yaf_view_destroy_symtable (int *) ;
 scalar_t__ yaf_view_render_tpl (int *,int *,int *,int *) ;
 TYPE_1__* yaf_view_simple_ce ;
 int * zend_read_property (TYPE_1__*,int *,int ,int,int *) ;
 int zend_string_release (int *) ;

int yaf_view_simple_render(yaf_view_t *view, zval *tpl, zval *vars, zval *ret) {
 zval *tpl_vars;
 zend_array *symbol_table;

 if (IS_STRING != Z_TYPE_P(tpl)) {
  return 0;
 }

 tpl_vars = zend_read_property(yaf_view_simple_ce, view, ZEND_STRL(YAF_VIEW_PROPERTY_NAME_TPLVARS), 1, ((void*)0));

 symbol_table = yaf_view_build_symtable(tpl_vars, vars);

 if (IS_ABSOLUTE_PATH(Z_STRVAL_P(tpl), Z_STRLEN_P(tpl))) {
  if (yaf_view_render_tpl(view, symbol_table, Z_STR_P(tpl), ret) == 0) {
   yaf_view_destroy_symtable(symbol_table);
   return 0;
  }
 } else {
  zend_string *script;
  zval *tpl_dir = zend_read_property(yaf_view_simple_ce, view, ZEND_STRL(YAF_VIEW_PROPERTY_NAME_TPLDIR), 0, ((void*)0));

  if (IS_STRING != Z_TYPE_P(tpl_dir)) {
   if (YAF_G(view_directory)) {
    script = strpprintf(0, "%s%c%s", ZSTR_VAL(YAF_G(view_directory)), DEFAULT_SLASH, Z_STRVAL_P(tpl));
   } else {
    yaf_view_destroy_symtable(symbol_table);
    yaf_trigger_error(YAF_ERR_NOTFOUND_VIEW,
      "Could not determine the view script path, you should call %s::setScriptPath to specific it",
      ZSTR_VAL(yaf_view_simple_ce->name));
    return 0;
   }
  } else {
   script = strpprintf(0, "%s%c%s", Z_STRVAL_P(tpl_dir), DEFAULT_SLASH, Z_STRVAL_P(tpl));
  }

  if (yaf_view_render_tpl(view, symbol_table, script, ret) == 0) {
   yaf_view_destroy_symtable(symbol_table);
   zend_string_release(script);
   return 0;
  }
  zend_string_release(script);
 }

 yaf_view_destroy_symtable(symbol_table);

 return 1;
}
