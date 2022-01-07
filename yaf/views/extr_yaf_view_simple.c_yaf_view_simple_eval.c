
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef char zend_op_array ;
typedef int zend_array ;
typedef int yaf_view_t ;


 scalar_t__ IS_STRING ;
 int YAF_VIEW_PROPERTY_NAME_TPLVARS ;
 int ZEND_STRL (int ) ;
 int ZVAL_STR (int *,int ) ;
 scalar_t__ Z_STRLEN_P (int *) ;
 int Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int destroy_op_array (char*) ;
 int efree (char*) ;
 int strpprintf (int ,char*,int ) ;
 int * yaf_view_build_symtable (int *,int *) ;
 int yaf_view_destroy_symtable (int *) ;
 int yaf_view_exec_tpl (int *,char*,int *,int *) ;
 int yaf_view_simple_ce ;
 char* zend_compile_string (int *,char*) ;
 char* zend_make_compiled_string_description (char*) ;
 int * zend_read_property (int ,int *,int ,int,int *) ;
 int zval_ptr_dtor (int *) ;

int yaf_view_simple_eval(yaf_view_t *view, zval *tpl, zval * vars, zval *ret) {
 zval *tpl_vars;
 zend_array *symbol_table;

 if (IS_STRING != Z_TYPE_P(tpl)) {
  return 0;
 }

 tpl_vars = zend_read_property(yaf_view_simple_ce, view, ZEND_STRL(YAF_VIEW_PROPERTY_NAME_TPLVARS), 1, ((void*)0));

 symbol_table = yaf_view_build_symtable(tpl_vars, vars);

 if (Z_STRLEN_P(tpl)) {
  zval phtml;
  zend_op_array *op_array;
  char *eval_desc = zend_make_compiled_string_description("template code");


  ZVAL_STR(&phtml, strpprintf(0, "?>%s", Z_STRVAL_P(tpl)));

  op_array = zend_compile_string(&phtml, eval_desc);

  zval_ptr_dtor(&phtml);
  efree(eval_desc);

  if (op_array) {
   (void)yaf_view_exec_tpl(view, op_array, symbol_table, ret);
   destroy_op_array(op_array);
   efree(op_array);
  }
 }

 yaf_view_destroy_symtable(symbol_table);

 return 1;
}
