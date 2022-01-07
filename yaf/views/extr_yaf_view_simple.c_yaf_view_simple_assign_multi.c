
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int yaf_view_t ;
typedef int copy_ctor_func_t ;


 scalar_t__ IS_ARRAY ;
 int YAF_VIEW_PROPERTY_NAME_TPLVARS ;
 int ZEND_STRL (int ) ;
 int Z_ARRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int yaf_view_simple_ce ;
 int zend_hash_copy (int ,int ,int ) ;
 int * zend_read_property (int ,int *,int ,int,int *) ;
 scalar_t__ zval_add_ref ;

int yaf_view_simple_assign_multi(yaf_view_t *view, zval *value) {
 zval *tpl_vars = zend_read_property(yaf_view_simple_ce, view, ZEND_STRL(YAF_VIEW_PROPERTY_NAME_TPLVARS), 1, ((void*)0));
 if (Z_TYPE_P(value) == IS_ARRAY) {
  zend_hash_copy(Z_ARRVAL_P(tpl_vars), Z_ARRVAL_P(value), (copy_ctor_func_t) zval_add_ref);
  return 1;
 }
 return 0;
}
