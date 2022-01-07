
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int yaf_view_t ;


 scalar_t__ IS_ARRAY ;
 int YAF_VIEW_PROPERTY_NAME_TPLVARS ;
 int ZEND_STRL (int ) ;
 int Z_ARRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int yaf_view_simple_ce ;
 int zend_hash_clean (int ) ;
 int * zend_read_property (int ,int *,int ,int,int *) ;
 int zend_symtable_del (int ,int *) ;

void yaf_view_simple_clear_assign(yaf_view_t *view, zend_string *name) {
 zval *tpl_vars = zend_read_property(yaf_view_simple_ce, view, ZEND_STRL(YAF_VIEW_PROPERTY_NAME_TPLVARS), 1, ((void*)0));
 if (tpl_vars && Z_TYPE_P(tpl_vars) == IS_ARRAY) {
  if (name) {
   zend_symtable_del(Z_ARRVAL_P(tpl_vars), name);
  } else {
   zend_hash_clean(Z_ARRVAL_P(tpl_vars));
  }
 }
}
